; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_terminate_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_terminate_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p_string = type { i64, i32 }

@terminate_string.symname = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [10 x i8] c"__unnamed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.p_string*)* @terminate_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @terminate_string(%struct.p_string* %0) #0 {
  %2 = alloca %struct.p_string*, align 8
  store %struct.p_string* %0, %struct.p_string** %2, align 8
  %3 = load %struct.p_string*, %struct.p_string** %2, align 8
  %4 = getelementptr inbounds %struct.p_string, %struct.p_string* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.p_string*, %struct.p_string** %2, align 8
  %7 = getelementptr inbounds %struct.p_string, %struct.p_string* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @memcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @terminate_string.symname, i64 0, i64 0), i32 %5, i64 %8)
  %10 = load %struct.p_string*, %struct.p_string** %2, align 8
  %11 = getelementptr inbounds %struct.p_string, %struct.p_string* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* @terminate_string.symname, i64 0, i64 %12
  store i8 0, i8* %13, align 1
  %14 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @terminate_string.symname, i64 0, i64 0), align 16
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = call i64 @strcmp(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @terminate_string.symname, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br label %19

19:                                               ; preds = %16, %1
  %20 = phi i1 [ true, %1 ], [ %18, %16 ]
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* null, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @terminate_string.symname, i64 0, i64 0)
  ret i8* %22
}

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
