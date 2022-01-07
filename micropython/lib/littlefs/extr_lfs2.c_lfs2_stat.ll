; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_stat.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lfs2_info = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"lfs2_stat(%p, \22%s\22, %p)\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"lfs2_stat -> %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lfs2_stat(i32* %0, i8* %1, %struct.lfs2_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lfs2_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.lfs2_info* %2, %struct.lfs2_info** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to i8*
  %13 = ptrtoint i8* %12 to i32
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.lfs2_info*, %struct.lfs2_info** %7, align 8
  %16 = bitcast %struct.lfs2_info* %15 to i8*
  %17 = call i32 (i8*, i32, ...) @LFS2_TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13, i8* %14, i8* %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @lfs2_dir_find(i32* %18, i32* %8, i8** %6, i32* null)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = call i32 (i8*, i32, ...) @LFS2_TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %35

26:                                               ; preds = %3
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @lfs2_tag_id(i32 %28)
  %30 = load %struct.lfs2_info*, %struct.lfs2_info** %7, align 8
  %31 = call i32 @lfs2_dir_getinfo(i32* %27, i32* %8, i32 %29, %struct.lfs2_info* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 (i8*, i32, ...) @LFS2_TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %26, %22
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @LFS2_TRACE(i8*, i32, ...) #1

declare dso_local i32 @lfs2_dir_find(i32*, i32*, i8**, i32*) #1

declare dso_local i32 @lfs2_dir_getinfo(i32*, i32*, i32, %struct.lfs2_info*) #1

declare dso_local i32 @lfs2_tag_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
