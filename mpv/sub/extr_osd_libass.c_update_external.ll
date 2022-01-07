; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_osd_libass.c_update_external.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_osd_libass.c_update_external.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.osd_style_opts* }
%struct.osd_style_opts = type { i32 }
%struct.osd_state = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.osd_style_opts* }
%struct.osd_object = type { i32 }
%struct.osd_external = type { %struct.TYPE_17__, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"OSD\00", align 1
@osd_style_conf = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.osd_state*, %struct.osd_object*, %struct.osd_external*)* @update_external to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_external(%struct.osd_state* %0, %struct.osd_object* %1, %struct.osd_external* %2) #0 {
  %4 = alloca %struct.osd_state*, align 8
  %5 = alloca %struct.osd_object*, align 8
  %6 = alloca %struct.osd_external*, align 8
  %7 = alloca %struct.TYPE_15__, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.osd_style_opts*, align 8
  %10 = alloca %struct.TYPE_15__, align 8
  %11 = alloca i8*, align 8
  store %struct.osd_state* %0, %struct.osd_state** %4, align 8
  store %struct.osd_object* %1, %struct.osd_object** %5, align 8
  store %struct.osd_external* %2, %struct.osd_external** %6, align 8
  %12 = load %struct.osd_external*, %struct.osd_external** %6, align 8
  %13 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @bstr0(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %89

21:                                               ; preds = %3
  %22 = load %struct.osd_external*, %struct.osd_external** %6, align 8
  %23 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.osd_external*, %struct.osd_external** %6, align 8
  %26 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  %28 = load %struct.osd_external*, %struct.osd_external** %6, align 8
  %29 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.osd_external*, %struct.osd_external** %6, align 8
  %32 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 8
  %34 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %35 = load %struct.osd_object*, %struct.osd_object** %5, align 8
  %36 = load %struct.osd_external*, %struct.osd_external** %6, align 8
  %37 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %36, i32 0, i32 0
  %38 = call i32 @create_ass_track(%struct.osd_state* %34, %struct.osd_object* %35, %struct.TYPE_17__* %37)
  %39 = load %struct.osd_external*, %struct.osd_external** %6, align 8
  %40 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %39, i32 0, i32 0
  %41 = call i32 @clear_ass(%struct.TYPE_17__* %40)
  %42 = load %struct.osd_external*, %struct.osd_external** %6, align 8
  %43 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  %48 = load %struct.osd_external*, %struct.osd_external** %6, align 8
  %49 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %48, i32 0, i32 0
  %50 = call i32 @get_style(%struct.TYPE_17__* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %53 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %52, i32 0, i32 0
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load %struct.osd_style_opts*, %struct.osd_style_opts** %55, align 8
  %57 = call i32 @mp_ass_set_style(i32 %50, i32 %51, %struct.osd_style_opts* %56)
  %58 = load %struct.osd_style_opts*, %struct.osd_style_opts** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @osd_style_conf, i32 0, i32 0), align 8
  store %struct.osd_style_opts* %58, %struct.osd_style_opts** %9, align 8
  %59 = load %struct.osd_external*, %struct.osd_external** %6, align 8
  %60 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %59, i32 0, i32 0
  %61 = call i32 @get_style(%struct.TYPE_17__* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.osd_style_opts*, %struct.osd_style_opts** %9, align 8
  %64 = call i32 @mp_ass_set_style(i32 %61, i32 %62, %struct.osd_style_opts* %63)
  br label %65

65:                                               ; preds = %88, %21
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @bstr_split_tok(i64 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_15__* %10, %struct.TYPE_15__* %7)
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i8* @bstrdup0(i32* null, i64 %78)
  store i8* %79, i8** %11, align 8
  %80 = load %struct.osd_external*, %struct.osd_external** %6, align 8
  %81 = getelementptr inbounds %struct.osd_external, %struct.osd_external* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 @add_osd_ass_event(%struct.TYPE_13__* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %84)
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @talloc_free(i8* %86)
  br label %88

88:                                               ; preds = %76, %69
  br label %65

89:                                               ; preds = %20, %65
  ret void
}

declare dso_local i64 @bstr0(i32) #1

declare dso_local i32 @create_ass_track(%struct.osd_state*, %struct.osd_object*, %struct.TYPE_17__*) #1

declare dso_local i32 @clear_ass(%struct.TYPE_17__*) #1

declare dso_local i32 @mp_ass_set_style(i32, i32, %struct.osd_style_opts*) #1

declare dso_local i32 @get_style(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @bstr_split_tok(i64, i8*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i8* @bstrdup0(i32*, i64) #1

declare dso_local i32 @add_osd_ass_event(%struct.TYPE_13__*, i8*, i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
