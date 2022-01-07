; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_m_option_set_node_or_string.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_m_option_set_node_or_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.mpv_node = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@MPV_FORMAT_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m_option_set_node_or_string(%struct.mp_log* %0, i32* %1, i8* %2, i8* %3, %struct.mpv_node* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mp_log*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.mpv_node*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mp_log* %0, %struct.mp_log** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.mpv_node* %4, %struct.mpv_node** %11, align 8
  %15 = load %struct.mpv_node*, %struct.mpv_node** %11, align 8
  %16 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MPV_FORMAT_STRING, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %5
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @bstr0(i8* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i64 @bstr_split_tok(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %13, i32* %14)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %26, %20
  %29 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.mpv_node*, %struct.mpv_node** %11, align 8
  %33 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @bstr0(i8* %35)
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @m_option_parse(%struct.mp_log* %29, i32* %30, i32 %31, i32 %36, i8* %37)
  store i32 %38, i32* %6, align 4
  br label %44

39:                                               ; preds = %5
  %40 = load i32*, i32** %8, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load %struct.mpv_node*, %struct.mpv_node** %11, align 8
  %43 = call i32 @m_option_set_node(i32* %40, i8* %41, %struct.mpv_node* %42)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %39, %28
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i64 @bstr_split_tok(i32, i8*, i32*, i32*) #1

declare dso_local i32 @m_option_parse(%struct.mp_log*, i32*, i32, i32, i8*) #1

declare dso_local i32 @m_option_set_node(i32*, i8*, %struct.mpv_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
