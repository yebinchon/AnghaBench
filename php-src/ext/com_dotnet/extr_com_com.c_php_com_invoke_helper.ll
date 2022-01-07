; ModuleID = '/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_com.c_php_com_invoke_helper.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_com.c_php_com_invoke_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@IID_NULL = common dso_local global i32 0, align 4
@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@html_errors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"<b>Source:</b> %s<br/><b>Description:</b> %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Source: %s\0ADescription: %s\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Parameter %d: %s\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Error [0x%08x] %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @php_com_invoke_helper(%struct.TYPE_8__* %0, i32 %1, i32 %2, %struct.TYPE_10__* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %23 = bitcast %struct.TYPE_9__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 16, i1 false)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = call i32 @V_DISPATCH(i32* %25)
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @IDispatch_Invoke(i32 %26, i32 %27, i32* @IID_NULL, i32 %28, i32 %29, %struct.TYPE_10__* %30, i32* %31, %struct.TYPE_9__* %17, i32* %16)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %166

35:                                               ; preds = %7
  %36 = load i32, i32* %15, align 4
  %37 = call i64 @FAILED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %166

39:                                               ; preds = %35
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  %40 = load i32, i32* %15, align 4
  switch i32 %40, label %148 [
    i32 130, label %41
    i32 129, label %126
    i32 128, label %126
    i32 131, label %134
  ]

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @php_com_olestring_to_string(i32 %47, i64* %21, i32 %50)
  store i8* %51, i8** %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @SysFreeString(i32 %53)
  br label %55

55:                                               ; preds = %45, %41
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @php_com_olestring_to_string(i32 %61, i64* %22, i32 %64)
  store i8* %65, i8** %19, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @SysFreeString(i32 %67)
  br label %69

69:                                               ; preds = %59, %55
  %70 = load i32, i32* @html_errors, align 4
  %71 = call i32 @PG(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = load i8*, i8** %18, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i8*, i8** %18, align 8
  br label %79

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i8* [ %77, %76 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %78 ]
  %81 = load i8*, i8** %19, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i8*, i8** %19, align 8
  br label %86

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %83
  %87 = phi i8* [ %84, %83 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %85 ]
  %88 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %20, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %80, i8* %87)
  br label %105

89:                                               ; preds = %69
  %90 = load i8*, i8** %18, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i8*, i8** %18, align 8
  br label %95

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94, %92
  %96 = phi i8* [ %93, %92 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %94 ]
  %97 = load i8*, i8** %19, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i8*, i8** %19, align 8
  br label %102

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %99
  %103 = phi i8* [ %100, %99 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %101 ]
  %104 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %20, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %96, i8* %103)
  br label %105

105:                                              ; preds = %102, %86
  %106 = load i8*, i8** %19, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i8*, i8** %19, align 8
  %110 = call i32 @efree(i8* %109)
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i8*, i8** %18, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i8*, i8** %18, align 8
  %116 = call i32 @efree(i8* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @SysFreeString(i32 %123)
  br label %125

125:                                              ; preds = %121, %117
  br label %156

126:                                              ; preds = %39, %39
  %127 = load i32, i32* %15, align 4
  %128 = call i8* @php_win32_error_to_msg(i32 %127)
  store i8* %128, i8** %19, align 8
  %129 = load i32, i32* %16, align 4
  %130 = load i8*, i8** %19, align 8
  %131 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %20, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %129, i8* %130)
  %132 = load i8*, i8** %19, align 8
  %133 = call i32 @php_win32_error_msg_free(i8* %132)
  br label %156

134:                                              ; preds = %39
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %137, %140
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %134
  %144 = load i32, i32* %14, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i8* null, i8** %20, align 8
  br label %156

147:                                              ; preds = %143, %134
  br label %148

148:                                              ; preds = %39, %147
  %149 = load i32, i32* %15, align 4
  %150 = call i8* @php_win32_error_to_msg(i32 %149)
  store i8* %150, i8** %19, align 8
  %151 = load i32, i32* %15, align 4
  %152 = load i8*, i8** %19, align 8
  %153 = call i32 (i8**, i32, i8*, ...) @spprintf(i8** %20, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %151, i8* %152)
  %154 = load i8*, i8** %19, align 8
  %155 = call i32 @php_win32_error_msg_free(i8* %154)
  br label %156

156:                                              ; preds = %148, %146, %126, %125
  %157 = load i8*, i8** %20, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load i32, i32* %15, align 4
  %161 = load i8*, i8** %20, align 8
  %162 = call i32 @php_com_throw_exception(i32 %160, i8* %161)
  %163 = load i8*, i8** %20, align 8
  %164 = call i32 @efree(i8* %163)
  br label %165

165:                                              ; preds = %159, %156
  br label %166

166:                                              ; preds = %165, %35, %7
  %167 = load i32, i32* %15, align 4
  ret i32 %167
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @IDispatch_Invoke(i32, i32, i32*, i32, i32, %struct.TYPE_10__*, i32*, %struct.TYPE_9__*, i32*) #2

declare dso_local i32 @V_DISPATCH(i32*) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i8* @php_com_olestring_to_string(i32, i64*, i32) #2

declare dso_local i32 @SysFreeString(i32) #2

declare dso_local i32 @PG(i32) #2

declare dso_local i32 @spprintf(i8**, i32, i8*, ...) #2

declare dso_local i32 @efree(i8*) #2

declare dso_local i8* @php_win32_error_to_msg(i32) #2

declare dso_local i32 @php_win32_error_msg_free(i8*) #2

declare dso_local i32 @php_com_throw_exception(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
