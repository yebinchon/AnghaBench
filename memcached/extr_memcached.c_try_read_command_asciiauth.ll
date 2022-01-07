; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_try_read_command_asciiauth.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_try_read_command_asciiauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i8*, i32, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@MAX_TOKENS = common dso_local global i32 0, align 4
@conn_closing = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"CLIENT_ERROR unauthenticated\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"CLIENT_ERROR bad command line termination\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"CLIENT_ERROR bad authentication token format\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"STORED\00", align 1
@try_read_command_ascii = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"CLIENT_ERROR authentication failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @try_read_command_asciiauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_read_command_asciiauth(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %11 = load i32, i32* @MAX_TOKENS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca %struct.TYPE_11__, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  store i8* null, i8** %7, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %102, label %19

19:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %226

25:                                               ; preds = %19
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @memchr(i8* %28, i8 signext 10, i32 %31)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %25
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 1024
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = load i32, i32* @conn_closing, align 4
  %43 = call i32 @conn_set_state(%struct.TYPE_12__* %41, i32 %42)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %226

44:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %226

45:                                               ; preds = %25
  %46 = load i8*, i8** %8, align 8
  store i8 0, i8* %46, align 1
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* @MAX_TOKENS, align 4
  %51 = call i64 @tokenize_command(i8* %49, %struct.TYPE_11__* %14, i32 %50)
  store i64 %51, i64* %6, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = ptrtoint i8* %52 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = add nsw i64 %58, 1
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = sub nsw i64 %63, %59
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = ptrtoint i8* %66 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = add nsw i64 %72, 1
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 %73
  store i8* %77, i8** %75, align 8
  %78 = load i64, i64* %6, align 8
  %79 = icmp ult i64 %78, 6
  br i1 %79, label %92, label %80

80:                                               ; preds = %45
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i64 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 16
  %84 = call i64 @strcmp(i32 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i64 4
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 16
  %90 = call i32 @safe_strtoul(i32 %89, i32* %9)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %86, %80, %45
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %94 = call i32 @out_string(%struct.TYPE_12__* %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %226

95:                                               ; preds = %86
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 2
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  br label %102

102:                                              ; preds = %95, %1
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %226

111:                                              ; preds = %102
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  store i8* %114, i8** %7, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = sext i32 %124 to i64
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8* %129, i8** %126, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  store i32 0, i32* %131, align 8
  %132 = load i8*, i8** %7, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %132, i64 %136
  %138 = getelementptr inbounds i8, i8* %137, i64 -2
  %139 = call i64 @strncmp(i8* %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %111
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %143 = call i32 @out_string(%struct.TYPE_12__* %142, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %226

144:                                              ; preds = %111
  %145 = load i8*, i8** %7, align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = sub nsw i32 %148, 2
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %145, i64 %150
  store i8 0, i8* %151, align 1
  %152 = load i8*, i8** %7, align 8
  %153 = load i32, i32* @MAX_TOKENS, align 4
  %154 = call i64 @tokenize_command(i8* %152, %struct.TYPE_11__* %14, i32 %153)
  store i64 %154, i64* %6, align 8
  %155 = load i64, i64* %6, align 8
  %156 = icmp ult i64 %155, 3
  br i1 %156, label %157, label %160

157:                                              ; preds = %144
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %159 = call i32 @out_string(%struct.TYPE_12__* %158, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %226

160:                                              ; preds = %144
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i64 0
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 16
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i64 1
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @authfile_check(i32 %163, i32 %166)
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %196

169:                                              ; preds = %160
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %171 = call i32 @out_string(%struct.TYPE_12__* %170, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 4
  store i32 1, i32* %173, align 4
  %174 = load i32, i32* @try_read_command_ascii, align 4
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 6
  store i32 %174, i32* %176, align 8
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 5
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = call i32 @pthread_mutex_lock(i32* %181)
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 5
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %187, align 4
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 5
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = call i32 @pthread_mutex_unlock(i32* %194)
  br label %225

196:                                              ; preds = %160
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %198 = call i32 @out_string(%struct.TYPE_12__* %197, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 5
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = call i32 @pthread_mutex_lock(i32* %203)
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 5
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 4
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 5
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %216, align 4
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 5
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = call i32 @pthread_mutex_unlock(i32* %223)
  br label %225

225:                                              ; preds = %196, %169
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %226

226:                                              ; preds = %225, %157, %141, %110, %92, %44, %40, %24
  %227 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %227)
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #2

declare dso_local i32 @conn_set_state(%struct.TYPE_12__*, i32) #2

declare dso_local i64 @tokenize_command(i8*, %struct.TYPE_11__*, i32) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @safe_strtoul(i32, i32*) #2

declare dso_local i32 @out_string(%struct.TYPE_12__*, i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @authfile_check(i32, i32) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
