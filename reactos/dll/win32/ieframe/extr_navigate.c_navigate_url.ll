; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_navigate.c_navigate_url.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_navigate.c_navigate_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i64, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"navigating to %s\0A\00", align 1
@VT_EMPTY = common dso_local global i32 0, align 4
@VT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Unsupported args (Flags %s; TargetFrameName %s)\0A\00", align 1
@VT_ARRAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Invalid post data %s\0A\00", align 1
@VT_BSTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Headers: %s\0A\00", align 1
@READYSTATE_LOADING = common dso_local global i32 0, align 4
@INTERNET_MAX_URL_LENGTH = common dso_local global i32 0, align 4
@URL_APPLY_GUESSSCHEME = common dso_local global i32 0, align 4
@URL_APPLY_GUESSFILE = common dso_local global i32 0, align 4
@URL_APPLY_DEFAULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"UrlApplyScheme failed: %08x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@navigate_bsc_proc = common dso_local global i32 0, align 4
@navigate_bsc_task_destr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @navigate_url(%struct.TYPE_10__* %0, i64* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %15, align 4
  store i64* null, i64** %16, align 8
  %23 = load i32, i32* @S_OK, align 4
  store i32 %23, i32* %17, align 4
  %24 = load i64*, i64** %8, align 8
  %25 = call i32 @debugstr_w(i64* %24)
  %26 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %6
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @V_VT(i32* %30)
  %32 = load i32, i32* @VT_EMPTY, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @V_VT(i32* %35)
  %37 = load i32, i32* @VT_ERROR, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %52, label %39

39:                                               ; preds = %34, %29, %6
  %40 = load i32*, i32** %10, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %58

42:                                               ; preds = %39
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @V_VT(i32* %43)
  %45 = load i32, i32* @VT_EMPTY, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @V_VT(i32* %48)
  %50 = load i32, i32* @VT_ERROR, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %47, %34
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @debugstr_variant(i32* %53)
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @debugstr_variant(i32* %55)
  %57 = call i32 @FIXME(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %52, %47, %42, %39
  %59 = load i32*, i32** %11, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %85

61:                                               ; preds = %58
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @V_VT(i32* %62)
  %64 = load i32, i32* @VT_ARRAY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %61
  %68 = load i32*, i32** %11, align 8
  %69 = call i64 @V_ISBYREF(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32*, i32** %11, align 8
  %73 = call i32** @V_ARRAYREF(i32* %72)
  %74 = load i32*, i32** %73, align 8
  br label %78

75:                                               ; preds = %67
  %76 = load i32*, i32** %11, align 8
  %77 = call i32* @V_ARRAY(i32* %76)
  br label %78

78:                                               ; preds = %75, %71
  %79 = phi i32* [ %74, %71 ], [ %77, %75 ]
  store i32* %79, i32** %13, align 8
  br label %84

80:                                               ; preds = %61
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @debugstr_variant(i32* %81)
  %83 = call i32 @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %80, %78
  br label %85

85:                                               ; preds = %84, %58
  %86 = load i32*, i32** %13, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load i32*, i32** %13, align 8
  %90 = bitcast i32** %14 to i8**
  %91 = call i32 @SafeArrayAccessData(i32* %89, i8** %90)
  %92 = load i32*, i32** %13, align 8
  %93 = call i32 @SafeArrayGetUBound(i32* %92, i32 1, i32* %18)
  %94 = load i32, i32* %18, align 4
  %95 = add nsw i32 %94, 1
  %96 = load i32*, i32** %13, align 8
  %97 = call i32 @SafeArrayGetElemsize(i32* %96)
  %98 = mul nsw i32 %95, %97
  store i32 %98, i32* %15, align 4
  br label %99

99:                                               ; preds = %88, %85
  %100 = load i32*, i32** %12, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load i32*, i32** %12, align 8
  %104 = call i32 @V_VT(i32* %103)
  %105 = load i32, i32* @VT_BSTR, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i32*, i32** %12, align 8
  %109 = call i64* @V_BSTR(i32* %108)
  store i64* %109, i64** %16, align 8
  %110 = load i64*, i64** %16, align 8
  %111 = call i32 @debugstr_w(i64* %110)
  %112 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %107, %102, %99
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %115 = load i32, i32* @READYSTATE_LOADING, align 4
  %116 = call i32 @set_doc_state(%struct.TYPE_10__* %114, i32 %115)
  %117 = load i32, i32* @READYSTATE_LOADING, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %166

124:                                              ; preds = %113
  %125 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %126 = zext i32 %125 to i64
  %127 = call i8* @llvm.stacksave()
  store i8* %127, i8** %19, align 8
  %128 = alloca i64, i64 %126, align 16
  store i64 %126, i64* %20, align 8
  %129 = load i64*, i64** %8, align 8
  %130 = call i64 @PathIsURLW(i64* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  %133 = getelementptr inbounds i64, i64* %128, i64 0
  store i64 0, i64* %133, align 16
  br label %151

134:                                              ; preds = %124
  %135 = call i32 @ARRAY_SIZE(i64* %128)
  store i32 %135, i32* %21, align 4
  %136 = load i64*, i64** %8, align 8
  %137 = load i32, i32* @URL_APPLY_GUESSSCHEME, align 4
  %138 = load i32, i32* @URL_APPLY_GUESSFILE, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @URL_APPLY_DEFAULT, align 4
  %141 = or i32 %139, %140
  %142 = call i32 @UrlApplySchemeW(i64* %136, i64* %128, i32* %21, i32 %141)
  store i32 %142, i32* %17, align 4
  %143 = load i32, i32* %17, align 4
  %144 = call i64 @FAILED(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %134
  %147 = load i32, i32* %17, align 4
  %148 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %147)
  %149 = getelementptr inbounds i64, i64* %128, i64 0
  store i64 0, i64* %149, align 16
  br label %150

150:                                              ; preds = %146, %134
  br label %151

151:                                              ; preds = %150, %132
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %153 = load i64, i64* %128, align 16
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %158

156:                                              ; preds = %151
  %157 = load i64*, i64** %8, align 8
  br label %158

158:                                              ; preds = %156, %155
  %159 = phi i64* [ %128, %155 ], [ %157, %156 ]
  %160 = load i64*, i64** %16, align 8
  %161 = load i32*, i32** %14, align 8
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* @TRUE, align 4
  %164 = call i32 @async_doc_navigate(%struct.TYPE_10__* %152, i64* %159, i64* %160, i32* %161, i32 %162, i32 %163)
  store i32 %164, i32* %17, align 4
  %165 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %165)
  br label %187

166:                                              ; preds = %113
  %167 = call %struct.TYPE_9__* @heap_alloc(i32 8)
  store %struct.TYPE_9__* %167, %struct.TYPE_9__** %22, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %169 = load i64*, i64** %8, align 8
  %170 = load i32*, i32** %14, align 8
  %171 = load i32, i32* %15, align 4
  %172 = load i64*, i64** %16, align 8
  %173 = call i32 @create_callback(%struct.TYPE_10__* %168, i64* %169, i32* %170, i32 %171, i64* %172)
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i32, i32* @navigate_bsc_proc, align 4
  %180 = load i32, i32* @navigate_bsc_task_destr, align 4
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = icmp eq i32* %183, null
  %185 = zext i1 %184 to i32
  %186 = call i32 @push_dochost_task(%struct.TYPE_10__* %176, i32* %178, i32 %179, i32 %180, i32 %185)
  br label %187

187:                                              ; preds = %166, %158
  %188 = load i32*, i32** %14, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i32*, i32** %13, align 8
  %192 = call i32 @SafeArrayUnaccessData(i32* %191)
  br label %193

193:                                              ; preds = %190, %187
  %194 = load i32, i32* %17, align 4
  ret i32 %194
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i64*) #1

declare dso_local i32 @V_VT(i32*) #1

declare dso_local i32 @FIXME(i8*, i32, i32) #1

declare dso_local i32 @debugstr_variant(i32*) #1

declare dso_local i64 @V_ISBYREF(i32*) #1

declare dso_local i32** @V_ARRAYREF(i32*) #1

declare dso_local i32* @V_ARRAY(i32*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @SafeArrayAccessData(i32*, i8**) #1

declare dso_local i32 @SafeArrayGetUBound(i32*, i32, i32*) #1

declare dso_local i32 @SafeArrayGetElemsize(i32*) #1

declare dso_local i64* @V_BSTR(i32*) #1

declare dso_local i32 @set_doc_state(%struct.TYPE_10__*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @PathIsURLW(i64*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @UrlApplySchemeW(i64*, i64*, i32*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @async_doc_navigate(%struct.TYPE_10__*, i64*, i64*, i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local %struct.TYPE_9__* @heap_alloc(i32) #1

declare dso_local i32 @create_callback(%struct.TYPE_10__*, i64*, i32*, i32, i64*) #1

declare dso_local i32 @push_dochost_task(%struct.TYPE_10__*, i32*, i32, i32, i32) #1

declare dso_local i32 @SafeArrayUnaccessData(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
