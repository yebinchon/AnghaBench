; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltestlib.c_create_bare_ssl_connection.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltestlib.c_create_bare_ssl_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_ERROR_WANT_WRITE = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"SSL_connect() failed %d, %d\00", align 1
@SSL_ERROR_NONE = common dso_local global i32 0, align 4
@SSL_ERROR_WANT_X509_LOOKUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"SSL_accept() failed %d, %d\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Unexpected SSL_read() success!\00", align 1
@MAXLOOPS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"No progress made\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_bare_ssl_connection(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [20 x i8], align 16
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @SSL_is_dtls(i32* %18)
  store i32 %19, i32* %16, align 4
  br label %20

20:                                               ; preds = %186, %4
  %21 = load i32, i32* @SSL_ERROR_WANT_WRITE, align 4
  store i32 %21, i32* %12, align 4
  br label %22

22:                                               ; preds = %43, %20
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %10, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @SSL_ERROR_WANT_WRITE, align 4
  %31 = icmp eq i32 %29, %30
  br label %32

32:                                               ; preds = %28, %25, %22
  %33 = phi i1 [ false, %25 ], [ false, %22 ], [ %31, %28 ]
  br i1 %33, label %34, label %44

34:                                               ; preds = %32
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @SSL_connect(i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @SSL_get_error(i32* %40, i32 %41)
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %39, %34
  br label %22

44:                                               ; preds = %32
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %10, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 (i8*, ...) @TEST_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  store i32 1, i32* %14, align 4
  br label %58

58:                                               ; preds = %54, %50, %47, %44
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @SSL_ERROR_NONE, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %189

67:                                               ; preds = %62, %58
  %68 = load i32, i32* @SSL_ERROR_WANT_WRITE, align 4
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %90, %67
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @SSL_ERROR_WANT_WRITE, align 4
  %78 = icmp eq i32 %76, %77
  br label %79

79:                                               ; preds = %75, %72, %69
  %80 = phi i1 [ false, %72 ], [ false, %69 ], [ %78, %75 ]
  br i1 %80, label %81, label %91

81:                                               ; preds = %79
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @SSL_accept(i32* %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @SSL_get_error(i32* %87, i32 %88)
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %86, %81
  br label %69

91:                                               ; preds = %79
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %109, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %11, align 4
  %96 = icmp sle i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @SSL_ERROR_WANT_X509_LOOKUP, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i32 (i8*, ...) @TEST_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %107)
  store i32 1, i32* %15, align 4
  br label %109

109:                                              ; preds = %105, %101, %97, %94, %91
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @SSL_ERROR_NONE, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 0, i32* %5, align 4
  br label %189

118:                                              ; preds = %113, %109
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 0, i32* %5, align 4
  br label %189

125:                                              ; preds = %121, %118
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %160

128:                                              ; preds = %125
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %160

131:                                              ; preds = %128
  %132 = load i32, i32* %11, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %131
  %135 = load i32, i32* %10, align 4
  %136 = icmp sle i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  %138 = load i32*, i32** %6, align 8
  %139 = getelementptr inbounds [20 x i8], [20 x i8]* %17, i64 0, i64 0
  %140 = call i64 @SSL_read(i32* %138, i8* %139, i32 20)
  %141 = icmp sgt i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = call i32 (i8*, ...) @TEST_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %189

144:                                              ; preds = %137
  br label %145

145:                                              ; preds = %144, %134, %131
  %146 = load i32, i32* %10, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %159

148:                                              ; preds = %145
  %149 = load i32, i32* %11, align 4
  %150 = icmp sle i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %148
  %152 = load i32*, i32** %7, align 8
  %153 = getelementptr inbounds [20 x i8], [20 x i8]* %17, i64 0, i64 0
  %154 = call i64 @SSL_read(i32* %152, i8* %153, i32 20)
  %155 = icmp sgt i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = call i32 (i8*, ...) @TEST_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %189

158:                                              ; preds = %151
  br label %159

159:                                              ; preds = %158, %148, %145
  br label %160

160:                                              ; preds = %159, %128, %125
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %13, align 4
  %163 = load i32, i32* @MAXLOOPS, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = call i32 (i8*, ...) @TEST_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %189

167:                                              ; preds = %160
  %168 = load i32, i32* %16, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %167
  %171 = load i32, i32* %13, align 4
  %172 = icmp sle i32 %171, 50
  br i1 %172, label %173, label %179

173:                                              ; preds = %170
  %174 = load i32, i32* %13, align 4
  %175 = srem i32 %174, 10
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %173
  %178 = call i32 @ossl_sleep(i32 50)
  br label %179

179:                                              ; preds = %177, %173, %170, %167
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %10, align 4
  %182 = icmp sle i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %180
  %184 = load i32, i32* %11, align 4
  %185 = icmp sle i32 %184, 0
  br label %186

186:                                              ; preds = %183, %180
  %187 = phi i1 [ true, %180 ], [ %185, %183 ]
  br i1 %187, label %20, label %188

188:                                              ; preds = %186
  store i32 1, i32* %5, align 4
  br label %189

189:                                              ; preds = %188, %165, %156, %142, %124, %117, %66
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local i32 @SSL_is_dtls(i32*) #1

declare dso_local i32 @SSL_connect(i32*) #1

declare dso_local i32 @SSL_get_error(i32*, i32) #1

declare dso_local i32 @TEST_info(i8*, ...) #1

declare dso_local i32 @SSL_accept(i32*) #1

declare dso_local i64 @SSL_read(i32*, i8*, i32) #1

declare dso_local i32 @ossl_sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
