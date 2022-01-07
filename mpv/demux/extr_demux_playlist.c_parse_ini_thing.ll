; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_playlist.c_parse_ini_thing.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_playlist.c_parse_ini_thing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl_parser = type { i64 }
%struct.TYPE_15__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl_parser*, i8*, i8*)* @parse_ini_thing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ini_thing(%struct.pl_parser* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pl_parser*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_15__, align 4
  %9 = alloca %struct.TYPE_15__, align 4
  %10 = alloca %struct.TYPE_15__, align 4
  %11 = alloca %struct.TYPE_15__, align 4
  %12 = alloca %struct.TYPE_15__, align 4
  %13 = alloca %struct.TYPE_15__, align 4
  %14 = alloca %struct.TYPE_15__, align 4
  %15 = alloca %struct.TYPE_15__, align 4
  %16 = alloca %struct.TYPE_15__, align 4
  store %struct.pl_parser* %0, %struct.pl_parser** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = bitcast %struct.TYPE_15__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 8, i1 false)
  br label %18

18:                                               ; preds = %29, %3
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load %struct.pl_parser*, %struct.pl_parser** %5, align 8
  %24 = call i32 @pl_eof(%struct.pl_parser* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i1 [ false, %18 ], [ %26, %22 ]
  br i1 %28, label %29, label %39

29:                                               ; preds = %27
  %30 = load %struct.pl_parser*, %struct.pl_parser** %5, align 8
  %31 = call i64 @pl_get_line(%struct.pl_parser* %30)
  %32 = bitcast %struct.TYPE_15__* %10 to i64*
  store i64 %31, i64* %32, align 4
  %33 = bitcast %struct.TYPE_15__* %10 to i64*
  %34 = load i64, i64* %33, align 4
  %35 = call i64 @bstr_strip(i64 %34)
  %36 = bitcast %struct.TYPE_15__* %9 to i64*
  store i64 %35, i64* %36, align 4
  %37 = bitcast %struct.TYPE_15__* %8 to i8*
  %38 = bitcast %struct.TYPE_15__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 8, i1 false)
  br label %18

39:                                               ; preds = %27
  %40 = load i8*, i8** %6, align 8
  %41 = bitcast %struct.TYPE_15__* %8 to i64*
  %42 = load i64, i64* %41, align 4
  %43 = call i64 @bstrcasecmp0(i64 %42, i8* %40)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 -1, i32* %4, align 4
  br label %109

46:                                               ; preds = %39
  %47 = load %struct.pl_parser*, %struct.pl_parser** %5, align 8
  %48 = getelementptr inbounds %struct.pl_parser, %struct.pl_parser* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %109

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %107, %52
  %54 = load %struct.pl_parser*, %struct.pl_parser** %5, align 8
  %55 = call i32 @pl_eof(%struct.pl_parser* %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br i1 %57, label %58, label %108

58:                                               ; preds = %53
  %59 = load %struct.pl_parser*, %struct.pl_parser** %5, align 8
  %60 = call i64 @pl_get_line(%struct.pl_parser* %59)
  %61 = bitcast %struct.TYPE_15__* %12 to i64*
  store i64 %60, i64* %61, align 4
  %62 = bitcast %struct.TYPE_15__* %12 to i64*
  %63 = load i64, i64* %62, align 4
  %64 = call i64 @bstr_strip(i64 %63)
  %65 = bitcast %struct.TYPE_15__* %11 to i64*
  store i64 %64, i64* %65, align 4
  %66 = bitcast %struct.TYPE_15__* %8 to i8*
  %67 = bitcast %struct.TYPE_15__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 8, i1 false)
  %68 = bitcast %struct.TYPE_15__* %8 to i64*
  %69 = load i64, i64* %68, align 4
  %70 = call i64 @bstr_split_tok(i64 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %13, %struct.TYPE_15__* %14)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %107

72:                                               ; preds = %58
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @bstr0(i8* %73)
  %75 = bitcast %struct.TYPE_15__* %13 to i64*
  %76 = load i64, i64* %75, align 4
  %77 = call i64 @bstr_case_startswith(i64 %76, i32 %74)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %107

79:                                               ; preds = %72
  %80 = bitcast %struct.TYPE_15__* %14 to i64*
  %81 = load i64, i64* %80, align 4
  %82 = call i64 @bstr_strip(i64 %81)
  %83 = bitcast %struct.TYPE_15__* %15 to i64*
  store i64 %82, i64* %83, align 4
  %84 = bitcast %struct.TYPE_15__* %14 to i8*
  %85 = bitcast %struct.TYPE_15__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 8, i1 false)
  %86 = bitcast %struct.TYPE_15__* %14 to i64*
  %87 = load i64, i64* %86, align 4
  %88 = call i64 @bstr_startswith0(i64 %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %79
  %91 = bitcast %struct.TYPE_15__* %14 to i64*
  %92 = load i64, i64* %91, align 4
  %93 = call i64 @bstr_endswith0(i64 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = bitcast %struct.TYPE_15__* %14 to i64*
  %97 = load i64, i64* %96, align 4
  %98 = call i64 @bstr_splice(i64 %97, i32 1, i32 -1)
  %99 = bitcast %struct.TYPE_15__* %16 to i64*
  store i64 %98, i64* %99, align 4
  %100 = bitcast %struct.TYPE_15__* %14 to i8*
  %101 = bitcast %struct.TYPE_15__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 8, i1 false)
  br label %102

102:                                              ; preds = %95, %90, %79
  %103 = load %struct.pl_parser*, %struct.pl_parser** %5, align 8
  %104 = bitcast %struct.TYPE_15__* %14 to i64*
  %105 = load i64, i64* %104, align 4
  %106 = call i32 @pl_add(%struct.pl_parser* %103, i64 %105)
  br label %107

107:                                              ; preds = %102, %72, %58
  br label %53

108:                                              ; preds = %53
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %51, %45
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pl_eof(%struct.pl_parser*) #2

declare dso_local i64 @bstr_strip(i64) #2

declare dso_local i64 @pl_get_line(%struct.pl_parser*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @bstrcasecmp0(i64, i8*) #2

declare dso_local i64 @bstr_split_tok(i64, i8*, %struct.TYPE_15__*, %struct.TYPE_15__*) #2

declare dso_local i64 @bstr_case_startswith(i64, i32) #2

declare dso_local i32 @bstr0(i8*) #2

declare dso_local i64 @bstr_startswith0(i64, i8*) #2

declare dso_local i64 @bstr_endswith0(i64, i8*) #2

declare dso_local i64 @bstr_splice(i64, i32, i32) #2

declare dso_local i32 @pl_add(%struct.pl_parser*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
