; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_playlist.c_scan_dir.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_playlist.c_scan_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl_parser = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.stat = type { i32 }
%struct.dirent = type { i8* }

@MAX_DIR_STACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not read directory.\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Skip recursive entry: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl_parser*, i8*, %struct.stat*, i32, i8***, i32*)* @scan_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_dir(%struct.pl_parser* %0, i8* %1, %struct.stat* %2, i32 %3, i8*** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pl_parser*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stat*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8***, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.dirent*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.stat, align 4
  %18 = alloca i32, align 4
  store %struct.pl_parser* %0, %struct.pl_parser** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.stat* %2, %struct.stat** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8*** %4, i8**** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = icmp sge i32 %20, 8192
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @MAX_DIR_STACK, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %6
  store i32 0, i32* %7, align 4
  br label %121

27:                                               ; preds = %22
  %28 = load i8*, i8** %9, align 8
  %29 = call i32* @opendir(i8* %28)
  store i32* %29, i32** %14, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load %struct.pl_parser*, %struct.pl_parser** %8, align 8
  %34 = call i32 @MP_ERR(%struct.pl_parser* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %121

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %117, %48, %35
  %37 = load i32*, i32** %14, align 8
  %38 = call %struct.dirent* @readdir(i32* %37)
  store %struct.dirent* %38, %struct.dirent** %15, align 8
  %39 = icmp ne %struct.dirent* %38, null
  br i1 %39, label %40, label %118

40:                                               ; preds = %36
  %41 = load %struct.dirent*, %struct.dirent** %15, align 8
  %42 = getelementptr inbounds %struct.dirent, %struct.dirent* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %36

49:                                               ; preds = %40
  %50 = load %struct.pl_parser*, %struct.pl_parser** %8, align 8
  %51 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @mp_cancel_test(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %118

58:                                               ; preds = %49
  %59 = load %struct.pl_parser*, %struct.pl_parser** %8, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load %struct.dirent*, %struct.dirent** %15, align 8
  %62 = getelementptr inbounds %struct.dirent, %struct.dirent* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @mp_path_join(%struct.pl_parser* %59, i8* %60, i8* %63)
  store i8* %64, i8** %16, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = call i64 @stat(i8* %65, %struct.stat* %17)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %108

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @S_ISDIR(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %108

73:                                               ; preds = %68
  store i32 0, i32* %18, align 4
  br label %74

74:                                               ; preds = %90, %73
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %74
  %79 = load %struct.stat*, %struct.stat** %10, align 8
  %80 = load i32, i32* %18, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %79, i64 %81
  %83 = call i64 @same_st(%struct.stat* %82, %struct.stat* %17)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load %struct.pl_parser*, %struct.pl_parser** %8, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = call i32 @MP_VERBOSE(%struct.pl_parser* %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %87)
  br label %117

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %18, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %18, align 4
  br label %74

93:                                               ; preds = %74
  %94 = load %struct.stat*, %struct.stat** %10, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %94, i64 %96
  %98 = bitcast %struct.stat* %97 to i8*
  %99 = bitcast %struct.stat* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 4 %99, i64 4, i1 false)
  %100 = load %struct.pl_parser*, %struct.pl_parser** %8, align 8
  %101 = load i8*, i8** %16, align 8
  %102 = load %struct.stat*, %struct.stat** %10, align 8
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  %105 = load i8***, i8**** %12, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = call i32 @scan_dir(%struct.pl_parser* %100, i8* %101, %struct.stat* %102, i32 %104, i8*** %105, i32* %106)
  br label %116

108:                                              ; preds = %68, %58
  %109 = load %struct.pl_parser*, %struct.pl_parser** %8, align 8
  %110 = load i8***, i8**** %12, align 8
  %111 = load i8**, i8*** %110, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load i8*, i8** %16, align 8
  %115 = call i32 @MP_TARRAY_APPEND(%struct.pl_parser* %109, i8** %111, i32 %113, i8* %114)
  br label %116

116:                                              ; preds = %108, %93
  br label %117

117:                                              ; preds = %116, %85
  br label %36

118:                                              ; preds = %57, %36
  %119 = load i32*, i32** %14, align 8
  %120 = call i32 @closedir(i32* %119)
  store i32 1, i32* %7, align 4
  br label %121

121:                                              ; preds = %118, %32, %26
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @MP_ERR(%struct.pl_parser*, i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @mp_cancel_test(i32) #1

declare dso_local i8* @mp_path_join(%struct.pl_parser*, i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @same_st(%struct.stat*, %struct.stat*) #1

declare dso_local i32 @MP_VERBOSE(%struct.pl_parser*, i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MP_TARRAY_APPEND(%struct.pl_parser*, i8**, i32, i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
