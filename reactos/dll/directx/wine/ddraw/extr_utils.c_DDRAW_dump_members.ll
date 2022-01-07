; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_utils.c_DDRAW_dump_members.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_utils.c_DDRAW_dump_members.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.member_info = type { i32, i32, i32 (i8*)*, i32 }

@.str = private unnamed_addr constant [9 x i8] c" - %s : \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, %struct.member_info*, i64)* @DDRAW_dump_members to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DDRAW_dump_members(i32 %0, i8* %1, %struct.member_info* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.member_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.member_info* %2, %struct.member_info** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %50, %4
  %11 = load i32, i32* %9, align 4
  %12 = zext i32 %11 to i64
  %13 = load i64, i64* %8, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %53

15:                                               ; preds = %10
  %16 = load %struct.member_info*, %struct.member_info** %7, align 8
  %17 = load i32, i32* %9, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.member_info, %struct.member_info* %16, i64 %18
  %20 = getelementptr inbounds %struct.member_info, %struct.member_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %15
  %26 = load %struct.member_info*, %struct.member_info** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.member_info, %struct.member_info* %26, i64 %28
  %30 = getelementptr inbounds %struct.member_info, %struct.member_info* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.member_info*, %struct.member_info** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.member_info, %struct.member_info* %33, i64 %35
  %37 = getelementptr inbounds %struct.member_info, %struct.member_info* %36, i32 0, i32 2
  %38 = load i32 (i8*)*, i32 (i8*)** %37, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.member_info*, %struct.member_info** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.member_info, %struct.member_info* %40, i64 %42
  %44 = getelementptr inbounds %struct.member_info, %struct.member_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %39, i64 %46
  %48 = call i32 %38(i8* %47)
  br label %49

49:                                               ; preds = %25, %15
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %10

53:                                               ; preds = %10
  ret void
}

declare dso_local i32 @TRACE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
