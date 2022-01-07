; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_accelerator_blacklist.c_zend_accel_blacklist_loadone.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_accelerator_blacklist.c_zend_accel_blacklist_loadone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i8*, i64 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@ACCEL_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Cannot load blacklist file: %s\0A\00", align 1
@ACCEL_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Loading blacklist file:  '%s'\00", align 1
@ACCEL_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"malloc() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*)* @zend_accel_blacklist_loadone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_accel_blacklist_loadone(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load i32, i32* @MAXPATHLEN, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %20 = load i32, i32* @MAXPATHLEN, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  store i8* null, i8** %8, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32* @fopen(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %25, i32** %9, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @ACCEL_LOG_WARNING, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 (i32, i8*, ...) @zend_accel_error(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  store i32 1, i32* %12, align 4
  br label %222

31:                                               ; preds = %2
  %32 = load i32, i32* @ACCEL_LOG_DEBUG, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 (i32, i8*, ...) @zend_accel_error(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @VCWD_REALPATH(i8* %35, i8* %19)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = call i32 @strlen(i8* %19)
  %40 = call i32 @zend_dirname(i8* %19, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i8* @zend_strndup(i8* %19, i32 %41)
  store i8* %42, i8** %8, align 8
  br label %43

43:                                               ; preds = %38, %31
  %44 = trunc i64 %17 to i32
  %45 = call i32 @memset(i8* %19, i32 0, i32 %44)
  %46 = trunc i64 %22 to i32
  %47 = call i32 @memset(i8* %23, i32 0, i32 %46)
  br label %48

48:                                               ; preds = %185, %128, %121, %43
  %49 = load i32, i32* @MAXPATHLEN, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = call i32* @fgets(i8* %19, i32 %49, i32* %50)
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %213

53:                                               ; preds = %48
  %54 = call i32 @strlen(i8* %19)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %86

57:                                               ; preds = %53
  %58 = load i32, i32* %10, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %19, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 10
  br i1 %64, label %65, label %86

65:                                               ; preds = %57
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %19, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load i32, i32* %10, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %65
  %73 = load i32, i32* %10, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %19, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 13
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %19, i64 %83
  store i8 0, i8* %84, align 1
  br label %85

85:                                               ; preds = %80, %72, %65
  br label %86

86:                                               ; preds = %85, %57, %53
  %87 = getelementptr inbounds i8, i8* %19, i64 0
  store i8* %87, i8** %14, align 8
  br label %88

88:                                               ; preds = %93, %86
  %89 = load i8*, i8** %14, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 13
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i8*, i8** %14, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %14, align 8
  store i8 0, i8* %94, align 1
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %10, align 4
  br label %88

98:                                               ; preds = %88
  %99 = load i8*, i8** %14, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 34
  br i1 %103, label %104, label %118

104:                                              ; preds = %98
  %105 = load i8*, i8** %14, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 34
  br i1 %112, label %113, label %118

113:                                              ; preds = %104
  %114 = load i8*, i8** %14, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %14, align 8
  store i8 0, i8* %114, align 1
  %116 = load i32, i32* %10, align 4
  %117 = sub nsw i32 %116, 2
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %113, %104, %98
  %119 = load i32, i32* %10, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %48

122:                                              ; preds = %118
  %123 = load i8*, i8** %14, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 59
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %48

129:                                              ; preds = %122
  %130 = load i8*, i8** %14, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i8* @zend_strndup(i8* %130, i32 %131)
  store i8* %132, i8** %13, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %129
  %136 = load i8*, i8** %13, align 8
  %137 = load i8*, i8** %8, align 8
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @expand_filepath_ex(i8* %136, i8* %23, i8* %137, i32 %138)
  br label %143

140:                                              ; preds = %129
  %141 = load i8*, i8** %13, align 8
  %142 = call i32 @expand_filepath(i8* %141, i8* %23)
  br label %143

143:                                              ; preds = %140, %135
  %144 = call i32 @strlen(i8* %23)
  store i32 %144, i32* %10, align 4
  %145 = load i8*, i8** %13, align 8
  %146 = call i32 @free(i8* %145)
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %148 = call i32 @zend_accel_blacklist_allocate(%struct.TYPE_6__* %147)
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  store i32 %149, i32* %157, align 8
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  %160 = call i64 @malloc(i32 %159)
  %161 = inttoptr i64 %160 to i8*
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  store i8* %161, i8** %169, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %185, label %180

180:                                              ; preds = %143
  %181 = load i32, i32* @ACCEL_LOG_ERROR, align 4
  %182 = call i32 (i32, i8*, ...) @zend_accel_error(i32 %181, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %183 = load i32*, i32** %9, align 8
  %184 = call i32 @fclose(i32* %183)
  store i32 1, i32* %12, align 4
  br label %222

185:                                              ; preds = %143
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %190, align 8
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 2
  store i64 %188, i64* %196, align 8
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %206, 1
  %208 = call i32 @memcpy(i8* %205, i8* %23, i32 %207)
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %210, align 8
  br label %48

213:                                              ; preds = %48
  %214 = load i32*, i32** %9, align 8
  %215 = call i32 @fclose(i32* %214)
  %216 = load i8*, i8** %8, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %213
  %219 = load i8*, i8** %8, align 8
  %220 = call i32 @free(i8* %219)
  br label %221

221:                                              ; preds = %218, %213
  store i32 0, i32* %12, align 4
  br label %222

222:                                              ; preds = %221, %180, %27
  %223 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %223)
  %224 = load i32, i32* %12, align 4
  switch i32 %224, label %226 [
    i32 0, label %225
    i32 1, label %225
  ]

225:                                              ; preds = %222, %222
  ret void

226:                                              ; preds = %222
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @zend_accel_error(i32, i8*, ...) #2

declare dso_local i64 @VCWD_REALPATH(i8*, i8*) #2

declare dso_local i32 @zend_dirname(i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @zend_strndup(i8*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @expand_filepath_ex(i8*, i8*, i8*, i32) #2

declare dso_local i32 @expand_filepath(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @zend_accel_blacklist_allocate(%struct.TYPE_6__*) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
