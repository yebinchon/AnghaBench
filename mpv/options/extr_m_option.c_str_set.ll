; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_str_set.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_str_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_node = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@MPV_FORMAT_STRING = common dso_local global i64 0, align 8
@M_OPT_UNKNOWN = common dso_local global i32 0, align 4
@M_OPT_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.mpv_node*)* @str_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_set(i32* %0, i8* %1, %struct.mpv_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mpv_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mpv_node* %2, %struct.mpv_node** %7, align 8
  %10 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %11 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MPV_FORMAT_STRING, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @M_OPT_UNKNOWN, align 4
  store i32 %16, i32* %4, align 4
  br label %39

17:                                               ; preds = %3
  %18 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %19 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @clamp_str(i32* %25, i8** %8)
  br label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @M_OPT_INVALID, align 4
  br label %29

29:                                               ; preds = %27, %24
  %30 = phi i32 [ %26, %24 ], [ %28, %27 ]
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32*, i32** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @copy_str(i32* %34, i8* %35, i8** %8)
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %15
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @clamp_str(i32*, i8**) #1

declare dso_local i32 @copy_str(i32*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
