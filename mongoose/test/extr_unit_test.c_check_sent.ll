; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_check_sent.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_check_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simple_data = type { i8*, i32 }
%struct.mg_connection = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"(num sent wrong: %d vs %d)\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"(send buf not empty)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.simple_data*, %struct.mg_connection*, i8*)* @check_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_sent(%struct.simple_data* %0, %struct.mg_connection* %1, i8* %2) #0 {
  %4 = alloca %struct.simple_data*, align 8
  %5 = alloca %struct.mg_connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [100 x i8], align 16
  store %struct.simple_data* %0, %struct.simple_data** %4, align 8
  store %struct.mg_connection* %1, %struct.mg_connection** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.simple_data*, %struct.simple_data** %4, align 8
  %12 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = trunc i64 %14 to i32
  %16 = icmp ne i32 %10, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %3
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.simple_data*, %struct.simple_data** %4, align 8
  %23 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = trunc i64 %25 to i32
  %27 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %26)
  %28 = load %struct.simple_data*, %struct.simple_data** %4, align 8
  %29 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %32 = call i32 @strcat(i32 %30, i8* %31)
  br label %38

33:                                               ; preds = %3
  %34 = load %struct.simple_data*, %struct.simple_data** %4, align 8
  %35 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 0, i8* %37, align 1
  br label %38

38:                                               ; preds = %33, %17
  %39 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %40 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.simple_data*, %struct.simple_data** %4, align 8
  %46 = getelementptr inbounds %struct.simple_data, %struct.simple_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @strcat(i32 %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %44, %38
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @strcat(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
