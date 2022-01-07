; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_ftp_fopen_wrapper.c_php_stream_ftp_rename.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_ftp_fopen_wrapper.c_php_stream_ftp_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32*, i32* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@REPORT_ERRORS = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unable to connect to %s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"RNFR %s\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Error Renaming file: %s\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"RNTO %s\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i32, i32*)* @php_stream_ftp_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_stream_ftp_rename(i32* %0, i8* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [512 x i8], align 16
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %14, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call %struct.TYPE_4__* @php_url_parse(i8* %17)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %13, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call %struct.TYPE_4__* @php_url_parse(i8* %19)
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %14, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %100

23:                                               ; preds = %5
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %100

26:                                               ; preds = %23
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %100

31:                                               ; preds = %26
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %100

36:                                               ; preds = %31
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @zend_string_equals(i32* %39, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %100

45:                                               ; preds = %36
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %100

50:                                               ; preds = %45
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %100

55:                                               ; preds = %50
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @zend_string_equals(i32* %58, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %100

64:                                               ; preds = %55
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %64
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %72
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %84, %87
  %89 = icmp ne i32 %88, 21
  br i1 %89, label %100, label %90

90:                                               ; preds = %81, %72, %64
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %95, %90, %81, %55, %50, %45, %36, %31, %26, %23, %5
  br label %192

101:                                              ; preds = %95
  %102 = load i32*, i32** %7, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = call i32* @php_ftp_fopen_connect(i32* %102, i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0, i32* null, i32* %104, i32* null, i32* null, i32* null, i32* null)
  store i32* %105, i32** %12, align 8
  %106 = load i32*, i32** %12, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %121, label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @REPORT_ERRORS, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load i32, i32* @E_WARNING, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = call i8* @ZSTR_VAL(i32* %117)
  %119 = call i32 @php_error_docref(i32* null, i32 %114, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %113, %108
  br label %192

121:                                              ; preds = %101
  %122 = load i32*, i32** %12, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = call i8* @ZSTR_VAL(i32* %130)
  br label %133

132:                                              ; preds = %121
  br label %133

133:                                              ; preds = %132, %127
  %134 = phi i8* [ %131, %127 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %132 ]
  %135 = call i32 @php_stream_printf(i32* %122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %134)
  %136 = load i32*, i32** %12, align 8
  %137 = call i32 @GET_FTP_RESULT(i32* %136)
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %15, align 4
  %139 = icmp slt i32 %138, 300
  br i1 %139, label %143, label %140

140:                                              ; preds = %133
  %141 = load i32, i32* %15, align 4
  %142 = icmp sgt i32 %141, 399
  br i1 %142, label %143, label %153

143:                                              ; preds = %140, %133
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* @REPORT_ERRORS, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32, i32* @E_WARNING, align 4
  %150 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %151 = call i32 @php_error_docref(i32* null, i32 %149, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %150)
  br label %152

152:                                              ; preds = %148, %143
  br label %192

153:                                              ; preds = %140
  %154 = load i32*, i32** %12, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %164

159:                                              ; preds = %153
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = call i8* @ZSTR_VAL(i32* %162)
  br label %165

164:                                              ; preds = %153
  br label %165

165:                                              ; preds = %164, %159
  %166 = phi i8* [ %163, %159 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %164 ]
  %167 = call i32 @php_stream_printf(i32* %154, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %166)
  %168 = load i32*, i32** %12, align 8
  %169 = call i32 @GET_FTP_RESULT(i32* %168)
  store i32 %169, i32* %15, align 4
  %170 = load i32, i32* %15, align 4
  %171 = icmp slt i32 %170, 200
  br i1 %171, label %175, label %172

172:                                              ; preds = %165
  %173 = load i32, i32* %15, align 4
  %174 = icmp sgt i32 %173, 299
  br i1 %174, label %175, label %185

175:                                              ; preds = %172, %165
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* @REPORT_ERRORS, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %175
  %181 = load i32, i32* @E_WARNING, align 4
  %182 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %183 = call i32 @php_error_docref(i32* null, i32 %181, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %182)
  br label %184

184:                                              ; preds = %180, %175
  br label %192

185:                                              ; preds = %172
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %187 = call i32 @php_url_free(%struct.TYPE_4__* %186)
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %189 = call i32 @php_url_free(%struct.TYPE_4__* %188)
  %190 = load i32*, i32** %12, align 8
  %191 = call i32 @php_stream_close(i32* %190)
  store i32 1, i32* %6, align 4
  br label %211

192:                                              ; preds = %184, %152, %120, %100
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %194 = icmp ne %struct.TYPE_4__* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %197 = call i32 @php_url_free(%struct.TYPE_4__* %196)
  br label %198

198:                                              ; preds = %195, %192
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %200 = icmp ne %struct.TYPE_4__* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %203 = call i32 @php_url_free(%struct.TYPE_4__* %202)
  br label %204

204:                                              ; preds = %201, %198
  %205 = load i32*, i32** %12, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load i32*, i32** %12, align 8
  %209 = call i32 @php_stream_close(i32* %208)
  br label %210

210:                                              ; preds = %207, %204
  store i32 0, i32* %6, align 4
  br label %211

211:                                              ; preds = %210, %185
  %212 = load i32, i32* %6, align 4
  ret i32 %212
}

declare dso_local %struct.TYPE_4__* @php_url_parse(i8*) #1

declare dso_local i32 @zend_string_equals(i32*, i32*) #1

declare dso_local i32* @php_ftp_fopen_connect(i32*, i8*, i8*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i8*) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i32 @php_stream_printf(i32*, i8*, i8*) #1

declare dso_local i32 @GET_FTP_RESULT(i32*) #1

declare dso_local i32 @php_url_free(%struct.TYPE_4__*) #1

declare dso_local i32 @php_stream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
