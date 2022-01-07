; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_cb_sclient.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_cb_sclient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, i64 }
%struct.simple_data = type { i32 }

@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @cb_sclient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb_sclient(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.simple_data*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %9 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.simple_data*
  store %struct.simple_data* %11, %struct.simple_data** %7, align 8
  %12 = load %struct.simple_data*, %struct.simple_data** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @count_events(%struct.simple_data* %12, i32 %13)
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %34 [
    i32 129, label %16
    i32 128, label %29
  ]

16:                                               ; preds = %3
  %17 = load %struct.simple_data*, %struct.simple_data** %7, align 8
  %18 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @do_recv(%struct.simple_data* %17, %struct.mg_connection* %18, i8* %19)
  %21 = load %struct.simple_data*, %struct.simple_data** %7, align 8
  %22 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %23 = call i32 @do_send(%struct.simple_data* %21, %struct.mg_connection* %22)
  %24 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %25 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %26 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %34

29:                                               ; preds = %3
  %30 = load %struct.simple_data*, %struct.simple_data** %7, align 8
  %31 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @check_sent(%struct.simple_data* %30, %struct.mg_connection* %31, i8* %32)
  br label %34

34:                                               ; preds = %3, %29, %16
  ret void
}

declare dso_local i32 @count_events(%struct.simple_data*, i32) #1

declare dso_local i32 @do_recv(%struct.simple_data*, %struct.mg_connection*, i8*) #1

declare dso_local i32 @do_send(%struct.simple_data*, %struct.mg_connection*) #1

declare dso_local i32 @check_sent(%struct.simple_data*, %struct.mg_connection*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
