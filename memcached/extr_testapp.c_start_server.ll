; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_start_server.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_start_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"MEMCACHED_PORT_FILENAME=/tmp/ports.%lu\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"MEMCACHED_PORT_FILENAME=\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"/tmp/pid.%lu\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"./timedrun\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"./memcached-debug\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-U\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@F_OK = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [53 x i8] c"Failed to open the file containing port numbers: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [11 x i8] c"TCP INET: \00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Failed to open pid file: %s\0A\00", align 1
@enable_ssl = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i32)* @start_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_server(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [80 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca [80 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca [24 x i8*], align 16
  %12 = alloca i32, align 4
  %13 = alloca [24 x i8], align 16
  %14 = alloca i32*, align 8
  %15 = alloca [80 x i8], align 16
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %19 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %20 = call i64 (...) @getpid()
  %21 = trunc i64 %20 to i32
  %22 = call i32 @snprintf(i8* %19, i32 80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %24 = call i32 @strlen(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8* %26, i8** %8, align 8
  %27 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %28 = call i64 (...) @getpid()
  %29 = trunc i64 %28 to i32
  %30 = call i32 @snprintf(i8* %27, i32 80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load i8*, i8** %8, align 8
  %32 = call i64 @remove(i8* %31)
  %33 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %34 = call i64 @remove(i8* %33)
  %35 = call i32 (...) @fork()
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, -1
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %125

42:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  %43 = getelementptr inbounds [24 x i8], [24 x i8]* %13, i64 0, i64 0
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @snprintf(i8* %43, i32 24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %47 = call i32 @putenv(i8* %46)
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds [24 x i8*], [24 x i8*]* %11, i64 0, i64 %53
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %54, align 8
  %55 = getelementptr inbounds [24 x i8], [24 x i8]* %13, i64 0, i64 0
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds [24 x i8*], [24 x i8*]* %11, i64 0, i64 %58
  store i8* %55, i8** %59, align 8
  br label %60

60:                                               ; preds = %50, %42
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds [24 x i8*], [24 x i8*]* %11, i64 0, i64 %63
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8** %64, align 8
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds [24 x i8*], [24 x i8*]* %11, i64 0, i64 %67
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %68, align 8
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds [24 x i8*], [24 x i8*]* %11, i64 0, i64 %71
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %72, align 8
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds [24 x i8*], [24 x i8*]* %11, i64 0, i64 %75
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %76, align 8
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds [24 x i8*], [24 x i8*]* %11, i64 0, i64 %79
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %80, align 8
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds [24 x i8*], [24 x i8*]* %11, i64 0, i64 %83
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8** %84, align 8
  %85 = call i64 (...) @getuid()
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %60
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds [24 x i8*], [24 x i8*]* %11, i64 0, i64 %90
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** %91, align 8
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds [24 x i8*], [24 x i8*]* %11, i64 0, i64 %94
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %95, align 8
  br label %96

96:                                               ; preds = %87, %60
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds [24 x i8*], [24 x i8*]* %11, i64 0, i64 %102
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8** %103, align 8
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds [24 x i8*], [24 x i8*]* %11, i64 0, i64 %106
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8** %107, align 8
  %108 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds [24 x i8*], [24 x i8*]* %11, i64 0, i64 %111
  store i8* %108, i8** %112, align 8
  br label %113

113:                                              ; preds = %99, %96
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds [24 x i8*], [24 x i8*]* %11, i64 0, i64 %116
  store i8* null, i8** %117, align 8
  %118 = getelementptr inbounds [24 x i8*], [24 x i8*]* %11, i64 0, i64 0
  %119 = load i8*, i8** %118, align 16
  %120 = getelementptr inbounds [24 x i8*], [24 x i8*]* %11, i64 0, i64 0
  %121 = call i32 @execv(i8* %119, i8** %120)
  %122 = icmp ne i32 %121, -1
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  br label %125

125:                                              ; preds = %113, %3
  br label %126

126:                                              ; preds = %131, %125
  %127 = load i8*, i8** %8, align 8
  %128 = load i32, i32* @F_OK, align 4
  %129 = call i32 @access(i8* %127, i32 %128)
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = call i32 @usleep(i32 10)
  br label %126

133:                                              ; preds = %126
  %134 = load i8*, i8** %8, align 8
  %135 = call i32* @fopen(i8* %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store i32* %135, i32** %14, align 8
  %136 = load i32*, i32** %14, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load i32, i32* @stderr, align 4
  %140 = load i32, i32* @errno, align 4
  %141 = call i8* @strerror(i32 %140)
  %142 = call i32 @fprintf(i32 %139, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0), i8* %141)
  %143 = call i32 @assert(i32 0)
  br label %144

144:                                              ; preds = %138, %133
  %145 = load i64*, i64** %4, align 8
  store i64 -1, i64* %145, align 8
  br label %146

146:                                              ; preds = %162, %144
  %147 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  %148 = load i32*, i32** %14, align 8
  %149 = call i32* @fgets(i8* %147, i32 80, i32* %148)
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %163

151:                                              ; preds = %146
  %152 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  %153 = call i64 @strncmp(i8* %152, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 10)
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  %157 = getelementptr inbounds i8, i8* %156, i64 10
  %158 = call i32 @safe_strtol(i8* %157, i64* %16)
  %159 = call i32 @assert(i32 %158)
  %160 = load i64, i64* %16, align 8
  %161 = load i64*, i64** %4, align 8
  store i64 %160, i64* %161, align 8
  br label %162

162:                                              ; preds = %155, %151
  br label %146

163:                                              ; preds = %146
  %164 = load i32*, i32** %14, align 8
  %165 = call i32 @fclose(i32* %164)
  %166 = load i8*, i8** %8, align 8
  %167 = call i64 @remove(i8* %166)
  %168 = icmp eq i64 %167, 0
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load i32, i32* %5, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %216

173:                                              ; preds = %163
  br label %174

174:                                              ; preds = %179, %173
  %175 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %176 = load i32, i32* @F_OK, align 4
  %177 = call i32 @access(i8* %175, i32 %176)
  %178 = icmp eq i32 %177, -1
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = call i32 @usleep(i32 10)
  br label %174

181:                                              ; preds = %174
  %182 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %183 = call i32* @fopen(i8* %182, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store i32* %183, i32** %14, align 8
  %184 = load i32*, i32** %14, align 8
  %185 = icmp eq i32* %184, null
  br i1 %185, label %186, label %192

186:                                              ; preds = %181
  %187 = load i32, i32* @stderr, align 4
  %188 = load i32, i32* @errno, align 4
  %189 = call i8* @strerror(i32 %188)
  %190 = call i32 @fprintf(i32 %187, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i8* %189)
  %191 = call i32 @assert(i32 0)
  br label %192

192:                                              ; preds = %186, %181
  store i32 0, i32* %17, align 4
  br label %193

193:                                              ; preds = %205, %192
  %194 = load i32, i32* %17, align 4
  %195 = icmp slt i32 %194, 20
  br i1 %195, label %196, label %201

196:                                              ; preds = %193
  %197 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  %198 = load i32*, i32** %14, align 8
  %199 = call i32* @fgets(i8* %197, i32 80, i32* %198)
  %200 = icmp eq i32* %199, null
  br label %201

201:                                              ; preds = %196, %193
  %202 = phi i1 [ false, %193 ], [ %200, %196 ]
  br i1 %202, label %203, label %208

203:                                              ; preds = %201
  %204 = call i32 @usleep(i32 10)
  br label %205

205:                                              ; preds = %203
  %206 = load i32, i32* %17, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %17, align 4
  br label %193

208:                                              ; preds = %201
  %209 = load i32*, i32** %14, align 8
  %210 = call i32 @fclose(i32* %209)
  %211 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  %212 = call i32 @safe_strtol(i8* %211, i64* %18)
  %213 = call i32 @assert(i32 %212)
  %214 = load i64, i64* %18, align 8
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %10, align 4
  br label %216

216:                                              ; preds = %208, %163
  %217 = load i32, i32* %10, align 4
  ret i32 %217
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @remove(i8*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @putenv(i8*) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i32 @execv(i8*, i8**) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @safe_strtol(i8*, i64*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
