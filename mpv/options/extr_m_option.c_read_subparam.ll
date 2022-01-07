; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_read_subparam.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_read_subparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.TYPE_15__ = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Terminating '\22' missing for '%.*s'\0A\00", align 1
@M_OPT_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Terminating ']' missing for '%.*s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Invalid length %d for '%.*s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, %struct.TYPE_15__*, i8*, %struct.TYPE_15__*, %struct.TYPE_15__*)* @read_subparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_subparam(%struct.mp_log* %0, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %1, i8* %2, %struct.TYPE_15__* %3, %struct.TYPE_15__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mp_log*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = alloca %struct.TYPE_15__, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__, align 8
  %15 = alloca %struct.TYPE_15__, align 8
  %16 = alloca %struct.TYPE_15__, align 8
  %17 = alloca %struct.TYPE_15__, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_15__, align 8
  %20 = alloca %struct.TYPE_15__, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_15__, align 8
  %23 = alloca %struct.TYPE_15__, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_15__, align 8
  %26 = alloca %struct.TYPE_15__, align 8
  store %struct.mp_log* %0, %struct.mp_log** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %10, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %28 = bitcast %struct.TYPE_15__* %11 to i8*
  %29 = bitcast %struct.TYPE_15__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 24, i1 false)
  %30 = bitcast %struct.TYPE_15__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 24, i1 false)
  %31 = call i64 @bstr_eatstart0(%struct.TYPE_15__* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %5
  %34 = call i32 @bstrcspn(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  call void @bstr_splice(%struct.TYPE_15__* sret %14, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %11, i32 0, i32 %35)
  %36 = bitcast %struct.TYPE_15__* %12 to i8*
  %37 = bitcast %struct.TYPE_15__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 24, i1 false)
  %38 = load i32, i32* %13, align 4
  call void @bstr_cut(%struct.TYPE_15__* sret %15, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %11, i32 %38)
  %39 = bitcast %struct.TYPE_15__* %11 to i8*
  %40 = bitcast %struct.TYPE_15__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 24, i1 false)
  %41 = call i32 @bstr_startswith0(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %33
  %44 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %45 = call i32 @BSTR_P(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %1)
  %46 = call i32 (%struct.mp_log*, i8*, i32, ...) @mp_err(%struct.mp_log* %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %47, i32* %6, align 4
  br label %153

48:                                               ; preds = %33
  call void @bstr_cut(%struct.TYPE_15__* sret %16, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %11, i32 1)
  %49 = bitcast %struct.TYPE_15__* %11 to i8*
  %50 = bitcast %struct.TYPE_15__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 24, i1 false)
  br label %146

51:                                               ; preds = %5
  %52 = call i64 @bstr_eatstart0(%struct.TYPE_15__* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %107

54:                                               ; preds = %51
  %55 = bitcast %struct.TYPE_15__* %17 to i8*
  %56 = bitcast %struct.TYPE_15__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 24, i1 false)
  store i32 1, i32* %18, align 4
  br label %57

57:                                               ; preds = %87, %54
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* %18, align 4
  %63 = icmp sgt i32 %62, 0
  br label %64

64:                                               ; preds = %61, %57
  %65 = phi i1 [ false, %57 ], [ %63, %61 ]
  br i1 %65, label %66, label %90

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 91
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* %18, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %18, align 4
  br label %87

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 93
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* %18, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %18, align 4
  br label %86

86:                                               ; preds = %83, %76
  br label %87

87:                                               ; preds = %86, %73
  call void @bstr_cut(%struct.TYPE_15__* sret %19, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %11, i32 1)
  %88 = bitcast %struct.TYPE_15__* %11 to i8*
  %89 = bitcast %struct.TYPE_15__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 24, i1 false)
  br label %57

90:                                               ; preds = %64
  %91 = load i32, i32* %18, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %95 = call i32 @BSTR_P(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %1)
  %96 = call i32 (%struct.mp_log*, i8*, i32, ...) @mp_err(%struct.mp_log* %94, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %97, i32* %6, align 4
  br label %153

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %100, %102
  %104 = sub nsw i32 %103, 1
  call void @bstr_splice(%struct.TYPE_15__* sret %20, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %17, i32 0, i32 %104)
  %105 = bitcast %struct.TYPE_15__* %12 to i8*
  %106 = bitcast %struct.TYPE_15__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 24, i1 false)
  br label %145

107:                                              ; preds = %51
  %108 = call i64 @bstr_eatstart0(%struct.TYPE_15__* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %135

110:                                              ; preds = %107
  %111 = call i32 @bstrtoll(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %11, %struct.TYPE_15__* %11, i32 0)
  store i32 %111, i32* %21, align 4
  %112 = call i32 @bstr_startswith0(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load i32, i32* %21, align 4
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 %117, 1
  %119 = icmp sgt i32 %115, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %114, %110
  %121 = load %struct.mp_log*, %struct.mp_log** %7, align 8
  %122 = load i32, i32* %21, align 4
  %123 = call i32 @BSTR_P(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %1)
  %124 = call i32 (%struct.mp_log*, i8*, i32, ...) @mp_err(%struct.mp_log* %121, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %122, i32 %123)
  %125 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %125, i32* %6, align 4
  br label %153

126:                                              ; preds = %114
  %127 = load i32, i32* %21, align 4
  %128 = add nsw i32 %127, 1
  call void @bstr_splice(%struct.TYPE_15__* sret %22, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %11, i32 1, i32 %128)
  %129 = bitcast %struct.TYPE_15__* %12 to i8*
  %130 = bitcast %struct.TYPE_15__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %129, i8* align 8 %130, i64 24, i1 false)
  %131 = load i32, i32* %21, align 4
  %132 = add nsw i32 %131, 1
  call void @bstr_cut(%struct.TYPE_15__* sret %23, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %11, i32 %132)
  %133 = bitcast %struct.TYPE_15__* %11 to i8*
  %134 = bitcast %struct.TYPE_15__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 8 %134, i64 24, i1 false)
  br label %144

135:                                              ; preds = %107
  %136 = load i8*, i8** %8, align 8
  %137 = call i32 @bstrcspn(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %11, i8* %136)
  store i32 %137, i32* %24, align 4
  %138 = load i32, i32* %24, align 4
  call void @bstr_splice(%struct.TYPE_15__* sret %25, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %11, i32 0, i32 %138)
  %139 = bitcast %struct.TYPE_15__* %12 to i8*
  %140 = bitcast %struct.TYPE_15__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %139, i8* align 8 %140, i64 24, i1 false)
  %141 = load i32, i32* %24, align 4
  call void @bstr_cut(%struct.TYPE_15__* sret %26, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %11, i32 %141)
  %142 = bitcast %struct.TYPE_15__* %11 to i8*
  %143 = bitcast %struct.TYPE_15__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %142, i8* align 8 %143, i64 24, i1 false)
  br label %144

144:                                              ; preds = %135, %126
  br label %145

145:                                              ; preds = %144, %98
  br label %146

146:                                              ; preds = %145, %48
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %148 = bitcast %struct.TYPE_15__* %147 to i8*
  %149 = bitcast %struct.TYPE_15__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %148, i8* align 8 %149, i64 24, i1 false)
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %151 = bitcast %struct.TYPE_15__* %150 to i8*
  %152 = bitcast %struct.TYPE_15__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %151, i8* align 8 %152, i64 24, i1 false)
  store i32 0, i32* %6, align 4
  br label %153

153:                                              ; preds = %146, %120, %93, %43
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @bstr_eatstart0(%struct.TYPE_15__*, i8*) #2

declare dso_local i32 @bstrcspn(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8, i8*) #2

declare dso_local void @bstr_splice(%struct.TYPE_15__* sret, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8, i32, i32) #2

declare dso_local void @bstr_cut(%struct.TYPE_15__* sret, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8, i32) #2

declare dso_local i32 @bstr_startswith0(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8, i8*) #2

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, i32, ...) #2

declare dso_local i32 @BSTR_P(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8) #2

declare dso_local i32 @bstrtoll(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8, %struct.TYPE_15__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
