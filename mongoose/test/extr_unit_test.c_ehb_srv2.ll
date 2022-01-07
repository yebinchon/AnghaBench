; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_ehb_srv2.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_ehb_srv2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@MG_EV_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @ehb_srv2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehb_srv2(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @MG_EV_CLOSE, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %12 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %18 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %16, %10
  %24 = load i8*, i8** %6, align 8
  br label %25

25:                                               ; preds = %23, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
