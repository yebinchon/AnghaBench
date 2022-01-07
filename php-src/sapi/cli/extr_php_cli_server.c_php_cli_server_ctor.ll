; ModuleID = '/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_php_cli_server_ctor.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_php_cli_server_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32, i8*, i64, i8*, i64, i32, i32, i32, i32, i32 }

@SUCCESS = common dso_local global i32 0, align 4
@SOCK_ERR = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid address: %s\0A\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@PHP_CLI_SERVER_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to listen on %s:%d (reason: %s)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@php_cli_server_client_dtor_wrapper = common dso_local global i32 0, align 4
@mime_type_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i8*, i8*)* @php_cli_server_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_cli_server_ctor(%struct.TYPE_4__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %21 = load i32, i32* @SUCCESS, align 4
  store i32 %21, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i32* null, i32** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 3000, i32* %16, align 4
  %22 = load i32, i32* @SOCK_ERR, align 4
  store i32 %22, i32* %17, align 4
  store i8* null, i8** %18, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 91
  br i1 %27, label %28, label %68

28:                                               ; preds = %4
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = call i8* @pestrdup(i8* %30, i32 1)
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @FAILURE, align 4
  store i32 %35, i32* %5, align 4
  br label %241

36:                                               ; preds = %28
  %37 = load i8*, i8** %11, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 93)
  store i8* %38, i8** %18, align 8
  %39 = load i8*, i8** %18, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %67

41:                                               ; preds = %36
  %42 = load i8*, i8** %18, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %18, align 8
  store i8 0, i8* %42, align 1
  %44 = load i8*, i8** %18, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 58
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load i8*, i8** %18, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = call i32 @strtol(i8* %50, i8** %18, i32 10)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %16, align 4
  %56 = icmp sgt i32 %55, 65535
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %48
  store i8* null, i8** %18, align 8
  br label %58

58:                                               ; preds = %57, %54
  br label %66

59:                                               ; preds = %41
  %60 = load i8*, i8** %18, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i8* null, i8** %18, align 8
  br label %65

65:                                               ; preds = %64, %59
  br label %66

66:                                               ; preds = %65, %58
  br label %67

67:                                               ; preds = %66, %36
  br label %93

68:                                               ; preds = %4
  %69 = load i8*, i8** %7, align 8
  %70 = call i8* @pestrdup(i8* %69, i32 1)
  store i8* %70, i8** %11, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @FAILURE, align 4
  store i32 %74, i32* %5, align 4
  br label %241

75:                                               ; preds = %68
  %76 = load i8*, i8** %11, align 8
  %77 = call i8* @strchr(i8* %76, i8 signext 58)
  store i8* %77, i8** %18, align 8
  %78 = load i8*, i8** %18, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %92

80:                                               ; preds = %75
  %81 = load i8*, i8** %18, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %18, align 8
  store i8 0, i8* %81, align 1
  %83 = load i8*, i8** %18, align 8
  %84 = call i32 @strtol(i8* %83, i8** %18, i32 10)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp sle i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %16, align 4
  %89 = icmp sgt i32 %88, 65535
  br i1 %89, label %90, label %91

90:                                               ; preds = %87, %80
  store i8* null, i8** %18, align 8
  br label %91

91:                                               ; preds = %90, %87
  br label %92

92:                                               ; preds = %91, %75
  br label %93

93:                                               ; preds = %92, %67
  %94 = load i8*, i8** %18, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* @stderr, align 4
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @fprintf(i32 %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %98)
  %100 = load i32, i32* @FAILURE, align 4
  store i32 %100, i32* %10, align 4
  br label %210

101:                                              ; preds = %93
  %102 = load i8*, i8** %11, align 8
  %103 = load i32, i32* @SOCK_STREAM, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 11
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 10
  %108 = call i32 @php_network_listen_socket(i8* %102, i32* %16, i32 %103, i32* %105, i32* %107, i32** %12)
  store i32 %108, i32* %17, align 4
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* @SOCK_ERR, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %132

112:                                              ; preds = %101
  %113 = load i32, i32* @PHP_CLI_SERVER_LOG_ERROR, align 4
  %114 = load i8*, i8** %11, align 8
  %115 = load i32, i32* %16, align 4
  %116 = load i32*, i32** %12, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i32*, i32** %12, align 8
  %120 = call i8* @ZSTR_VAL(i32* %119)
  br label %122

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %121, %118
  %123 = phi i8* [ %120, %118 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %121 ]
  %124 = call i32 @php_cli_server_logf(i32 %113, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %114, i32 %115, i8* %123)
  %125 = load i32*, i32** %12, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i32*, i32** %12, align 8
  %129 = call i32 @zend_string_release_ex(i32* %128, i32 0)
  br label %130

130:                                              ; preds = %127, %122
  %131 = load i32, i32* @FAILURE, align 4
  store i32 %131, i32* %10, align 4
  br label %210

132:                                              ; preds = %101
  %133 = load i32, i32* %17, align 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 9
  %138 = call i32 @php_cli_server_poller_ctor(i32* %137)
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* @SUCCESS, align 4
  %140 = load i32, i32* %15, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %132
  br label %210

143:                                              ; preds = %132
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 9
  %146 = load i32, i32* @POLLIN, align 4
  %147 = load i32, i32* %17, align 4
  %148 = call i32 @php_cli_server_poller_add(i32* %145, i32 %146, i32 %147)
  %149 = load i8*, i8** %11, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  %152 = load i32, i32* %16, align 4
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 8
  %157 = load i32, i32* @php_cli_server_client_dtor_wrapper, align 4
  %158 = call i32 @zend_hash_init(i32* %156, i32 0, i32* null, i32 %157, i32 1)
  %159 = load i8*, i8** %8, align 8
  %160 = call i64 @strlen(i8* %159)
  store i64 %160, i64* %19, align 8
  %161 = load i8*, i8** %8, align 8
  %162 = load i64, i64* %19, align 8
  %163 = call i8* @pestrndup(i8* %161, i64 %162, i32 1)
  store i8* %163, i8** %13, align 8
  %164 = load i8*, i8** %13, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %143
  %167 = load i32, i32* @FAILURE, align 4
  store i32 %167, i32* %10, align 4
  br label %210

168:                                              ; preds = %143
  %169 = load i8*, i8** %13, align 8
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 3
  store i8* %169, i8** %171, align 8
  %172 = load i64, i64* %19, align 8
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 4
  store i64 %172, i64* %174, align 8
  %175 = load i8*, i8** %9, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %194

177:                                              ; preds = %168
  %178 = load i8*, i8** %9, align 8
  %179 = call i64 @strlen(i8* %178)
  store i64 %179, i64* %20, align 8
  %180 = load i8*, i8** %9, align 8
  %181 = load i64, i64* %20, align 8
  %182 = call i8* @pestrndup(i8* %180, i64 %181, i32 1)
  store i8* %182, i8** %14, align 8
  %183 = load i8*, i8** %14, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %187, label %185

185:                                              ; preds = %177
  %186 = load i32, i32* @FAILURE, align 4
  store i32 %186, i32* %10, align 4
  br label %210

187:                                              ; preds = %177
  %188 = load i8*, i8** %14, align 8
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 5
  store i8* %188, i8** %190, align 8
  %191 = load i64, i64* %20, align 8
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 6
  store i64 %191, i64* %193, align 8
  br label %199

194:                                              ; preds = %168
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 5
  store i8* null, i8** %196, align 8
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 6
  store i64 0, i64* %198, align 8
  br label %199

199:                                              ; preds = %194, %187
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %201 = load i32, i32* @mime_type_map, align 4
  %202 = call i32 @php_cli_server_mime_type_ctor(%struct.TYPE_4__* %200, i32 %201)
  %203 = load i32, i32* @FAILURE, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %199
  %206 = load i32, i32* @FAILURE, align 4
  store i32 %206, i32* %10, align 4
  br label %210

207:                                              ; preds = %199
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 7
  store i32 1, i32* %209, align 8
  br label %210

210:                                              ; preds = %207, %205, %185, %166, %142, %130, %96
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* @SUCCESS, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %239

214:                                              ; preds = %210
  %215 = load i8*, i8** %11, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i8*, i8** %11, align 8
  %219 = call i32 @pefree(i8* %218, i32 1)
  br label %220

220:                                              ; preds = %217, %214
  %221 = load i8*, i8** %13, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i8*, i8** %13, align 8
  %225 = call i32 @pefree(i8* %224, i32 1)
  br label %226

226:                                              ; preds = %223, %220
  %227 = load i8*, i8** %14, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i8*, i8** %14, align 8
  %231 = call i32 @pefree(i8* %230, i32 1)
  br label %232

232:                                              ; preds = %229, %226
  %233 = load i32, i32* %17, align 4
  %234 = icmp sgt i32 %233, -1
  br i1 %234, label %235, label %238

235:                                              ; preds = %232
  %236 = load i32, i32* %17, align 4
  %237 = call i32 @closesocket(i32 %236)
  br label %238

238:                                              ; preds = %235, %232
  br label %239

239:                                              ; preds = %238, %210
  %240 = load i32, i32* %10, align 4
  store i32 %240, i32* %5, align 4
  br label %241

241:                                              ; preds = %239, %73, %34
  %242 = load i32, i32* %5, align 4
  ret i32 %242
}

declare dso_local i8* @pestrdup(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @php_network_listen_socket(i8*, i32*, i32, i32*, i32*, i32**) #1

declare dso_local i32 @php_cli_server_logf(i32, i8*, i8*, i32, i8*) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

declare dso_local i32 @php_cli_server_poller_ctor(i32*) #1

declare dso_local i32 @php_cli_server_poller_add(i32*, i32, i32) #1

declare dso_local i32 @zend_hash_init(i32*, i32, i32*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @pestrndup(i8*, i64, i32) #1

declare dso_local i32 @php_cli_server_mime_type_ctor(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @pefree(i8*, i32) #1

declare dso_local i32 @closesocket(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
