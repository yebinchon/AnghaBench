; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_file.c_file_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_file.c_file_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@BIO_FLAGS_UPLINK_INTERNAL = common dso_local global i32 0, align 4
@BIO_CLOSE = common dso_local global i32 0, align 4
@BIO_FP_APPEND = common dso_local global i64 0, align 8
@BIO_FP_READ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@BIO_FP_WRITE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@BIO_F_FILE_CTRL = common dso_local global i32 0, align 4
@BIO_R_BAD_FOPEN_MODE = common dso_local global i32 0, align 4
@ERR_LIB_SYS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"calling fopen(%s, %s)\00", align 1
@ERR_R_SYS_LIB = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"calling fflush()\00", align 1
@BIO_FP_TEXT = common dso_local global i64 0, align 8
@O_BINARY = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@_IOB_ENTRIES = common dso_local global i8* null, align 8
@_O_BINARY = common dso_local global i32 0, align 4
@_O_TEXT = common dso_local global i32 0, align 4
@stderr = common dso_local global i8* null, align 8
@stdin = common dso_local global i8* null, align 8
@stdout = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32, i64, i8*)* @file_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @file_ctrl(%struct.TYPE_5__* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca [4 x i8], align 1
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store i64 1, i64* %9, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %10, align 8
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %219 [
    i32 132, label %18
    i32 135, label %18
    i32 142, label %36
    i32 131, label %50
    i32 139, label %50
    i32 128, label %66
    i32 129, label %81
    i32 130, label %166
    i32 140, label %177
    i32 134, label %182
    i32 141, label %187
    i32 143, label %217
    i32 133, label %218
    i32 138, label %218
    i32 136, label %218
    i32 137, label %218
  ]

18:                                               ; preds = %4, %4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @BIO_FLAGS_UPLINK_INTERNAL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @UP_fseek(i32* %28, i64 %29, i32 0)
  store i64 %30, i64* %9, align 8
  br label %35

31:                                               ; preds = %18
  %32 = load i32*, i32** %10, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @fseek(i32* %32, i64 %33, i32 0)
  store i64 %34, i64* %9, align 8
  br label %35

35:                                               ; preds = %31, %25
  br label %220

36:                                               ; preds = %4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @BIO_FLAGS_UPLINK_INTERNAL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32*, i32** %10, align 8
  %45 = call i64 @UP_feof(i32* %44)
  store i64 %45, i64* %9, align 8
  br label %49

46:                                               ; preds = %36
  %47 = load i32*, i32** %10, align 8
  %48 = call i64 @feof(i32* %47)
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %46, %43
  br label %220

50:                                               ; preds = %4, %4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @BIO_FLAGS_UPLINK_INTERNAL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = call i64 @UP_ftell(i32* %60)
  store i64 %61, i64* %9, align 8
  br label %65

62:                                               ; preds = %50
  %63 = load i32*, i32** %10, align 8
  %64 = call i64 @ftell(i32* %63)
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %62, %57
  br label %220

66:                                               ; preds = %4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = call i32 @file_free(%struct.TYPE_5__* %67)
  %69 = load i64, i64* %7, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i32, i32* @BIO_CLOSE, align 4
  %72 = and i32 %70, %71
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i8*, i8** %8, align 8
  %76 = bitcast i8* %75 to i32*
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  store i32* %76, i32** %78, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  store i32 1, i32* %80, align 8
  br label %220

81:                                               ; preds = %4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = call i32 @file_free(%struct.TYPE_5__* %82)
  %84 = load i64, i64* %7, align 8
  %85 = trunc i64 %84 to i32
  %86 = load i32, i32* @BIO_CLOSE, align 4
  %87 = and i32 %85, %86
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* @BIO_FP_APPEND, align 8
  %92 = and i64 %90, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %81
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* @BIO_FP_READ, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %101 = call i32 @OPENSSL_strlcpy(i8* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %105

102:                                              ; preds = %94
  %103 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %104 = call i32 @OPENSSL_strlcpy(i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %105

105:                                              ; preds = %102, %99
  br label %142

106:                                              ; preds = %81
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* @BIO_FP_READ, align 8
  %109 = and i64 %107, %108
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* @BIO_FP_WRITE, align 8
  %114 = and i64 %112, %113
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %118 = call i32 @OPENSSL_strlcpy(i8* %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 4)
  br label %141

119:                                              ; preds = %111, %106
  %120 = load i64, i64* %7, align 8
  %121 = load i64, i64* @BIO_FP_WRITE, align 8
  %122 = and i64 %120, %121
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %126 = call i32 @OPENSSL_strlcpy(i8* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 4)
  br label %140

127:                                              ; preds = %119
  %128 = load i64, i64* %7, align 8
  %129 = load i64, i64* @BIO_FP_READ, align 8
  %130 = and i64 %128, %129
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %134 = call i32 @OPENSSL_strlcpy(i8* %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 4)
  br label %139

135:                                              ; preds = %127
  %136 = load i32, i32* @BIO_F_FILE_CTRL, align 4
  %137 = load i32, i32* @BIO_R_BAD_FOPEN_MODE, align 4
  %138 = call i32 @BIOerr(i32 %136, i32 %137)
  store i64 0, i64* %9, align 8
  br label %220

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %139, %124
  br label %141

141:                                              ; preds = %140, %116
  br label %142

142:                                              ; preds = %141, %105
  %143 = load i8*, i8** %8, align 8
  %144 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %145 = call i32* @openssl_fopen(i8* %143, i8* %144)
  store i32* %145, i32** %10, align 8
  %146 = load i32*, i32** %10, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %157

148:                                              ; preds = %142
  %149 = load i32, i32* @ERR_LIB_SYS, align 4
  %150 = call i32 (...) @get_last_sys_error()
  %151 = load i8*, i8** %8, align 8
  %152 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %153 = call i32 (i32, i32, i8*, ...) @ERR_raise_data(i32 %149, i32 %150, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %151, i8* %152)
  %154 = load i32, i32* @BIO_F_FILE_CTRL, align 4
  %155 = load i32, i32* @ERR_R_SYS_LIB, align 4
  %156 = call i32 @BIOerr(i32 %154, i32 %155)
  store i64 0, i64* %9, align 8
  br label %220

157:                                              ; preds = %142
  %158 = load i32*, i32** %10, align 8
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 3
  store i32* %158, i32** %160, align 8
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  store i32 1, i32* %162, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %164 = load i32, i32* @BIO_FLAGS_UPLINK_INTERNAL, align 4
  %165 = call i32 @BIO_clear_flags(%struct.TYPE_5__* %163, i32 %164)
  br label %220

166:                                              ; preds = %4
  %167 = load i8*, i8** %8, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %176

169:                                              ; preds = %166
  %170 = load i8*, i8** %8, align 8
  %171 = bitcast i8* %170 to i32**
  store i32** %171, i32*** %11, align 8
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = load i32**, i32*** %11, align 8
  store i32* %174, i32** %175, align 8
  br label %176

176:                                              ; preds = %169, %166
  br label %220

177:                                              ; preds = %4
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  store i64 %181, i64* %9, align 8
  br label %220

182:                                              ; preds = %4
  %183 = load i64, i64* %7, align 8
  %184 = trunc i64 %183 to i32
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  br label %220

187:                                              ; preds = %4
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @BIO_FLAGS_UPLINK_INTERNAL, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %187
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 3
  %197 = load i32*, i32** %196, align 8
  %198 = call i32 @UP_fflush(i32* %197)
  br label %204

199:                                              ; preds = %187
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @fflush(i32* %202)
  br label %204

204:                                              ; preds = %199, %194
  %205 = phi i32 [ %198, %194 ], [ %203, %199 ]
  store i32 %205, i32* %13, align 4
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* @EOF, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %204
  %210 = load i32, i32* @ERR_LIB_SYS, align 4
  %211 = call i32 (...) @get_last_sys_error()
  %212 = call i32 (i32, i32, i8*, ...) @ERR_raise_data(i32 %210, i32 %211, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %213 = load i32, i32* @BIO_F_FILE_CTRL, align 4
  %214 = load i32, i32* @ERR_R_SYS_LIB, align 4
  %215 = call i32 @BIOerr(i32 %213, i32 %214)
  store i64 0, i64* %9, align 8
  br label %216

216:                                              ; preds = %209, %204
  br label %220

217:                                              ; preds = %4
  store i64 1, i64* %9, align 8
  br label %220

218:                                              ; preds = %4, %4, %4, %4
  br label %219

219:                                              ; preds = %4, %218
  store i64 0, i64* %9, align 8
  br label %220

220:                                              ; preds = %219, %217, %216, %182, %177, %176, %157, %148, %135, %66, %65, %49, %35
  %221 = load i64, i64* %9, align 8
  ret i64 %221
}

declare dso_local i64 @UP_fseek(i32*, i64, i32) #1

declare dso_local i64 @fseek(i32*, i64, i32) #1

declare dso_local i64 @UP_feof(i32*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i64 @UP_ftell(i32*) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @file_free(%struct.TYPE_5__*) #1

declare dso_local i32 @OPENSSL_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i32* @openssl_fopen(i8*, i8*) #1

declare dso_local i32 @ERR_raise_data(i32, i32, i8*, ...) #1

declare dso_local i32 @get_last_sys_error(...) #1

declare dso_local i32 @BIO_clear_flags(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @UP_fflush(i32*) #1

declare dso_local i32 @fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
