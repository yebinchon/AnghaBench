; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_dbgchnl.c_change_channel_CB.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_dbgchnl.c_change_channel_CB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cce_user = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*, i8*)* @change_channel_CB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_channel_CB(i32 %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cce_user*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = bitcast i8* %10 to %struct.cce_user*
  store %struct.cce_user* %11, %struct.cce_user** %9, align 8
  %12 = load %struct.cce_user*, %struct.cce_user** %9, align 8
  %13 = getelementptr inbounds %struct.cce_user, %struct.cce_user* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load %struct.cce_user*, %struct.cce_user** %9, align 8
  %20 = getelementptr inbounds %struct.cce_user, %struct.cce_user* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @wcscmp(i32* %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %59, label %24

24:                                               ; preds = %16, %4
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cce_user*, %struct.cce_user** %9, align 8
  %29 = getelementptr inbounds %struct.cce_user, %struct.cce_user* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %27, %31
  %33 = load %struct.cce_user*, %struct.cce_user** %9, align 8
  %34 = getelementptr inbounds %struct.cce_user, %struct.cce_user* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cce_user*, %struct.cce_user** %9, align 8
  %37 = getelementptr inbounds %struct.cce_user, %struct.cce_user* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %35, %38
  %40 = or i32 %32, %39
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i64 @WriteProcessMemory(i32 %43, i8* %44, i32* %45, i32 1, i32* null)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %24
  %49 = load %struct.cce_user*, %struct.cce_user** %9, align 8
  %50 = getelementptr inbounds %struct.cce_user, %struct.cce_user* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %58

53:                                               ; preds = %24
  %54 = load %struct.cce_user*, %struct.cce_user** %9, align 8
  %55 = getelementptr inbounds %struct.cce_user, %struct.cce_user* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %53, %48
  br label %59

59:                                               ; preds = %58, %16
  ret i32 1
}

declare dso_local i32 @wcscmp(i32*, i32) #1

declare dso_local i64 @WriteProcessMemory(i32, i8*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
