; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_external_files.c_load_paths.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_external_files.c_load_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_global = type { i32 }
%struct.MPOpts = type { i32 }
%struct.subfn = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpv_global*, %struct.MPOpts*, %struct.subfn**, i32*, i8*, i8**, i8*, i32)* @load_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_paths(%struct.mpv_global* %0, %struct.MPOpts* %1, %struct.subfn** %2, i32* %3, i8* %4, i8** %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.mpv_global*, align 8
  %10 = alloca %struct.MPOpts*, align 8
  %11 = alloca %struct.subfn**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.mpv_global* %0, %struct.mpv_global** %9, align 8
  store %struct.MPOpts* %1, %struct.MPOpts** %10, align 8
  store %struct.subfn** %2, %struct.subfn*** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8** %5, i8*** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %21

21:                                               ; preds = %70, %8
  %22 = load i8**, i8*** %14, align 8
  %23 = icmp ne i8** %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i8**, i8*** %14, align 8
  %26 = load i32, i32* %17, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br label %31

31:                                               ; preds = %24, %21
  %32 = phi i1 [ false, %21 ], [ %30, %24 ]
  br i1 %32, label %33, label %73

33:                                               ; preds = %31
  %34 = load %struct.mpv_global*, %struct.mpv_global** %9, align 8
  %35 = load i8**, i8*** %14, align 8
  %36 = load i32, i32* %17, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @mp_get_user_path(i32* null, %struct.mpv_global* %34, i8* %39)
  store i8* %40, i8** %18, align 8
  %41 = load %struct.subfn**, %struct.subfn*** %11, align 8
  %42 = load %struct.subfn*, %struct.subfn** %41, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = call i32 @mp_dirname(i8* %43)
  %45 = load i8*, i8** %18, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i8*, i8** %18, align 8
  br label %55

49:                                               ; preds = %33
  %50 = load i8**, i8*** %14, align 8
  %51 = load i32, i32* %17, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  br label %55

55:                                               ; preds = %49, %47
  %56 = phi i8* [ %48, %47 ], [ %54, %49 ]
  %57 = call i32 @bstr0(i8* %56)
  %58 = call i8* @mp_path_join_bstr(%struct.subfn* %42, i32 %44, i32 %57)
  store i8* %58, i8** %19, align 8
  %59 = load %struct.mpv_global*, %struct.mpv_global** %9, align 8
  %60 = load %struct.MPOpts*, %struct.MPOpts** %10, align 8
  %61 = load %struct.subfn**, %struct.subfn*** %11, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load i8*, i8** %19, align 8
  %64 = call i32 @bstr0(i8* %63)
  %65 = load i8*, i8** %13, align 8
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @append_dir_subtitles(%struct.mpv_global* %59, %struct.MPOpts* %60, %struct.subfn** %61, i32* %62, i32 %64, i8* %65, i32 0, i32 %66)
  %68 = load i8*, i8** %18, align 8
  %69 = call i32 @talloc_free(i8* %68)
  br label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %17, align 4
  br label %21

73:                                               ; preds = %31
  %74 = load %struct.mpv_global*, %struct.mpv_global** %9, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = call i8* @mp_find_config_file(i32* null, %struct.mpv_global* %74, i8* %75)
  store i8* %76, i8** %20, align 8
  %77 = load i8*, i8** %20, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load %struct.mpv_global*, %struct.mpv_global** %9, align 8
  %81 = load %struct.MPOpts*, %struct.MPOpts** %10, align 8
  %82 = load %struct.subfn**, %struct.subfn*** %11, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = load i8*, i8** %20, align 8
  %85 = call i32 @bstr0(i8* %84)
  %86 = load i8*, i8** %13, align 8
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @append_dir_subtitles(%struct.mpv_global* %80, %struct.MPOpts* %81, %struct.subfn** %82, i32* %83, i32 %85, i8* %86, i32 1, i32 %87)
  br label %89

89:                                               ; preds = %79, %73
  %90 = load i8*, i8** %20, align 8
  %91 = call i32 @talloc_free(i8* %90)
  ret void
}

declare dso_local i8* @mp_get_user_path(i32*, %struct.mpv_global*, i8*) #1

declare dso_local i8* @mp_path_join_bstr(%struct.subfn*, i32, i32) #1

declare dso_local i32 @mp_dirname(i8*) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i32 @append_dir_subtitles(%struct.mpv_global*, %struct.MPOpts*, %struct.subfn**, i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i8* @mp_find_config_file(i32*, %struct.mpv_global*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
