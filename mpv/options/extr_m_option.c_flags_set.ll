; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_flags_set.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_flags_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_node = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.mpv_node_list* }
%struct.mpv_node_list = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MPV_FORMAT_NODE_ARRAY = common dso_local global i64 0, align 8
@M_OPT_UNKNOWN = common dso_local global i32 0, align 4
@MPV_FORMAT_STRING = common dso_local global i64 0, align 8
@M_OPT_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.mpv_node*)* @flags_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flags_set(i32* %0, i8* %1, %struct.mpv_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mpv_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mpv_node_list*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mpv_node* %2, %struct.mpv_node** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %12 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MPV_FORMAT_NODE_ARRAY, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @M_OPT_UNKNOWN, align 4
  store i32 %17, i32* %4, align 4
  br label %66

18:                                               ; preds = %3
  %19 = load %struct.mpv_node*, %struct.mpv_node** %7, align 8
  %20 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.mpv_node_list*, %struct.mpv_node_list** %21, align 8
  store %struct.mpv_node_list* %22, %struct.mpv_node_list** %9, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %59, %18
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.mpv_node_list*, %struct.mpv_node_list** %9, align 8
  %26 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %23
  %30 = load %struct.mpv_node_list*, %struct.mpv_node_list** %9, align 8
  %31 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MPV_FORMAT_STRING, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %41, i32* %4, align 4
  br label %66

42:                                               ; preds = %29
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.mpv_node_list*, %struct.mpv_node_list** %9, align 8
  %45 = getelementptr inbounds %struct.mpv_node_list, %struct.mpv_node_list* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @bstr0(i32 %52)
  %54 = call i64 @apply_flag(i32* %43, i32* %8, i32 %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %57, i32* %4, align 4
  br label %66

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %23

62:                                               ; preds = %23
  %63 = load i32, i32* %8, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = bitcast i8* %64 to i32*
  store i32 %63, i32* %65, align 4
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %62, %56, %40, %16
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @apply_flag(i32*, i32*, i32) #1

declare dso_local i32 @bstr0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
