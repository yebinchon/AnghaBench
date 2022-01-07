; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_ftp_fopen_wrapper.c_php_stream_ftp_mkdir.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_ftp_fopen_wrapper.c_php_stream_ftp_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@PHP_STREAM_MKDIR_RECURSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@REPORT_ERRORS = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unable to connect to %s\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Invalid path provided in %s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"MKD %s\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"CWD %s\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32, i32*)* @php_stream_ftp_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_stream_ftp_mkdir(i32* %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [512 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %13, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @PHP_STREAM_MKDIR_RECURSIVE, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %15, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i32* @php_ftp_fopen_connect(i32* %23, i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32* %25, i32* null, %struct.TYPE_4__** %13, i32* null, i32* null)
  store i32* %26, i32** %12, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @REPORT_ERRORS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @E_WARNING, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @php_error_docref(i32* null, i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %34, %29
  br label %190

39:                                               ; preds = %5
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @REPORT_ERRORS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @E_WARNING, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @php_error_docref(i32* null, i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %49, %44
  br label %190

54:                                               ; preds = %39
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %54
  %58 = load i32*, i32** %12, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i8* @ZSTR_VAL(i32* %61)
  %63 = call i32 @php_stream_printf(i32* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @GET_FTP_RESULT(i32* %64)
  store i32 %65, i32* %14, align 4
  br label %178

66:                                               ; preds = %54
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i8* @ZSTR_VAL(i32* %69)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @ZSTR_LEN(i32* %73)
  %75 = call i8* @estrndup(i8* %70, i32 %74)
  store i8* %75, i8** %19, align 8
  %76 = load i8*, i8** %19, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @ZSTR_LEN(i32* %79)
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %76, i64 %81
  store i8* %82, i8** %18, align 8
  br label %83

83:                                               ; preds = %108, %66
  %84 = load i8*, i8** %19, align 8
  %85 = call i8* @strrchr(i8* %84, i8 signext 47)
  store i8* %85, i8** %17, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %109

87:                                               ; preds = %83
  %88 = load i8*, i8** %17, align 8
  store i8 0, i8* %88, align 1
  %89 = load i32*, i32** %12, align 8
  %90 = load i8*, i8** %19, align 8
  %91 = call i64 @strlen(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i8*, i8** %19, align 8
  br label %96

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi i8* [ %94, %93 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %95 ]
  %98 = call i32 @php_stream_printf(i32* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %97)
  %99 = load i32*, i32** %12, align 8
  %100 = call i32 @GET_FTP_RESULT(i32* %99)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp sge i32 %101, 200
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load i32, i32* %14, align 4
  %105 = icmp sle i32 %104, 299
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i8*, i8** %17, align 8
  store i8 47, i8* %107, align 1
  br label %109

108:                                              ; preds = %103, %96
  br label %83

109:                                              ; preds = %106, %83
  %110 = load i32*, i32** %12, align 8
  %111 = load i8*, i8** %19, align 8
  %112 = call i64 @strlen(i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i8*, i8** %19, align 8
  br label %117

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %114
  %118 = phi i8* [ %115, %114 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %116 ]
  %119 = call i32 @php_stream_printf(i32* %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %118)
  %120 = load i32*, i32** %12, align 8
  %121 = call i32 @GET_FTP_RESULT(i32* %120)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp sge i32 %122, 200
  br i1 %123, label %124, label %175

124:                                              ; preds = %117
  %125 = load i32, i32* %14, align 4
  %126 = icmp sle i32 %125, 299
  br i1 %126, label %127, label %175

127:                                              ; preds = %124
  %128 = load i8*, i8** %17, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %127
  %131 = load i8*, i8** %19, align 8
  store i8* %131, i8** %17, align 8
  br label %132

132:                                              ; preds = %130, %127
  br label %133

133:                                              ; preds = %171, %132
  %134 = load i8*, i8** %17, align 8
  %135 = load i8*, i8** %18, align 8
  %136 = icmp ne i8* %134, %135
  br i1 %136, label %137, label %174

137:                                              ; preds = %133
  %138 = load i8*, i8** %17, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %171

142:                                              ; preds = %137
  %143 = load i8*, i8** %17, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %171

148:                                              ; preds = %142
  %149 = load i8*, i8** %17, align 8
  store i8 47, i8* %149, align 1
  %150 = load i32*, i32** %12, align 8
  %151 = load i8*, i8** %19, align 8
  %152 = call i32 @php_stream_printf(i32* %150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %151)
  %153 = load i32*, i32** %12, align 8
  %154 = call i32 @GET_FTP_RESULT(i32* %153)
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %14, align 4
  %156 = icmp slt i32 %155, 200
  br i1 %156, label %160, label %157

157:                                              ; preds = %148
  %158 = load i32, i32* %14, align 4
  %159 = icmp sgt i32 %158, 299
  br i1 %159, label %160, label %170

160:                                              ; preds = %157, %148
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* @REPORT_ERRORS, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load i32, i32* @E_WARNING, align 4
  %167 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %168 = call i32 @php_error_docref(i32* null, i32 %166, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %167)
  br label %169

169:                                              ; preds = %165, %160
  br label %174

170:                                              ; preds = %157
  br label %171

171:                                              ; preds = %170, %142, %137
  %172 = load i8*, i8** %17, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %17, align 8
  br label %133

174:                                              ; preds = %169, %133
  br label %175

175:                                              ; preds = %174, %124, %117
  %176 = load i8*, i8** %19, align 8
  %177 = call i32 @efree(i8* %176)
  br label %178

178:                                              ; preds = %175, %57
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %180 = call i32 @php_url_free(%struct.TYPE_4__* %179)
  %181 = load i32*, i32** %12, align 8
  %182 = call i32 @php_stream_close(i32* %181)
  %183 = load i32, i32* %14, align 4
  %184 = icmp slt i32 %183, 200
  br i1 %184, label %188, label %185

185:                                              ; preds = %178
  %186 = load i32, i32* %14, align 4
  %187 = icmp sgt i32 %186, 299
  br i1 %187, label %188, label %189

188:                                              ; preds = %185, %178
  store i32 0, i32* %6, align 4
  br label %203

189:                                              ; preds = %185
  store i32 1, i32* %6, align 4
  br label %203

190:                                              ; preds = %53, %38
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %192 = icmp ne %struct.TYPE_4__* %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %195 = call i32 @php_url_free(%struct.TYPE_4__* %194)
  br label %196

196:                                              ; preds = %193, %190
  %197 = load i32*, i32** %12, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32*, i32** %12, align 8
  %201 = call i32 @php_stream_close(i32* %200)
  br label %202

202:                                              ; preds = %199, %196
  store i32 0, i32* %6, align 4
  br label %203

203:                                              ; preds = %202, %189, %188
  %204 = load i32, i32* %6, align 4
  ret i32 %204
}

declare dso_local i32* @php_ftp_fopen_connect(i32*, i8*, i8*, i32, i32*, i32*, i32*, %struct.TYPE_4__**, i32*, i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i8*) #1

declare dso_local i32 @php_stream_printf(i32*, i8*, i8*) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i32 @GET_FTP_RESULT(i32*) #1

declare dso_local i8* @estrndup(i8*, i32) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @php_url_free(%struct.TYPE_4__*) #1

declare dso_local i32 @php_stream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
