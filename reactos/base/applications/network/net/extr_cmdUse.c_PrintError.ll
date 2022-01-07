; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdUse.c_PrintError.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdUse.c_PrintError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i32] [i32 37, i32 108, i32 117, i32 0], align 4
@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@StdErr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 10, i32 37, i32 115, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @PrintError to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PrintError(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [16 x i32], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @swprintf(i32* %6, i8* bitcast ([4 x i32]* @.str to i8*), i8* %7)
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %10 = call i32 @PrintMessageStringV(i32 3502, i32* %9)
  %11 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %12 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %15 = or i32 %13, %14
  %16 = load i8*, i8** %3, align 8
  %17 = ptrtoint i32* %5 to i32
  %18 = call i64 @FormatMessage(i32 %15, i32* null, i8* %16, i32 0, i32 %17, i32 0, i32* null)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @StdErr, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ConPrintf(i32 %21, i8* bitcast ([4 x i32]* @.str.1 to i8*), i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @LocalFree(i32 %24)
  br label %26

26:                                               ; preds = %20, %1
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @swprintf(i32*, i8*, i8*) #1

declare dso_local i32 @PrintMessageStringV(i32, i32*) #1

declare dso_local i64 @FormatMessage(i32, i32*, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @ConPrintf(i32, i8*, i32) #1

declare dso_local i32 @LocalFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
