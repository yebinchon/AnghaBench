; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_sockets.c_fpm_sockets_cleanup.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_sockets.c_fpm_sockets_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.listening_socket_s* }
%struct.listening_socket_s = type { i32, i8*, i64 }

@FPM_ENV_SOCKET_SET_MAX = common dso_local global i32 0, align 4
@sockets_list = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@FPM_CLEANUP_PARENT_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@FPM_ENV_SOCKET_SET_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%s%s=%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FPM_CLEANUP_PARENT_EXIT_MAIN = common dso_local global i32 0, align 4
@FPM_AF_UNIX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"FPM_SOCKETS\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"FPM_SOCKETS_%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @fpm_sockets_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpm_sockets_cleanup(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [32 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.listening_socket_s*, align 8
  %14 = alloca [32 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %15 = load i32, i32* @FPM_ENV_SOCKET_SET_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.listening_socket_s*, %struct.listening_socket_s** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sockets_list, i32 0, i32 1), align 8
  store %struct.listening_socket_s* %19, %struct.listening_socket_s** %13, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %145, %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sockets_list, i32 0, i32 0), align 8
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %150

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @FPM_CLEANUP_PARENT_EXEC, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.listening_socket_s*, %struct.listening_socket_s** %13, align 8
  %30 = getelementptr inbounds %struct.listening_socket_s, %struct.listening_socket_s* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @close(i32 %31)
  br label %124

33:                                               ; preds = %24
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %35 = load %struct.listening_socket_s*, %struct.listening_socket_s** %13, align 8
  %36 = getelementptr inbounds %struct.listening_socket_s, %struct.listening_socket_s* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 (i8*, i8*, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @FPM_ENV_SOCKET_SET_SIZE, align 4
  %41 = urem i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %43, %33
  %47 = phi i1 [ false, %33 ], [ %45, %43 ]
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  store i32 %49, i32* %9, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  %56 = add nsw i32 %51, %55
  %57 = sext i32 %56 to i64
  %58 = load %struct.listening_socket_s*, %struct.listening_socket_s** %13, align 8
  %59 = getelementptr inbounds %struct.listening_socket_s, %struct.listening_socket_s* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @strlen(i8* %60)
  %62 = add nsw i64 %57, %61
  %63 = add nsw i64 %62, 1
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %65 = call i64 @strlen(i8* %64)
  %66 = add nsw i64 %63, %65
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = add nsw i64 %69, 1
  %71 = call i8* @realloc(i8* %50, i64 %70)
  store i8* %71, i8** %11, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @FPM_ENV_SOCKET_SET_SIZE, align 4
  %74 = urem i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %46
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %9, align 4
  %79 = add i32 %77, %78
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %18, i64 %81
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* %6, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %76
  %88 = load i8*, i8** %11, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  store i8 0, i8* %92, align 1
  br label %93

93:                                               ; preds = %87, %76
  br label %94

94:                                               ; preds = %93, %46
  %95 = load i8*, i8** %11, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i32, i32* %9, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %94
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  br label %108

108:                                              ; preds = %104, %94
  %109 = phi i1 [ false, %94 ], [ %107, %104 ]
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %112 = load %struct.listening_socket_s*, %struct.listening_socket_s** %13, align 8
  %113 = getelementptr inbounds %struct.listening_socket_s, %struct.listening_socket_s* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %116 = call i64 (i8*, i8*, ...) @sprintf(i8* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %111, i8* %114, i8* %115)
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %12, align 4
  %123 = add i32 %122, %121
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %108, %28
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* @FPM_CLEANUP_PARENT_EXIT_MAIN, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %124
  %129 = load %struct.listening_socket_s*, %struct.listening_socket_s** %13, align 8
  %130 = getelementptr inbounds %struct.listening_socket_s, %struct.listening_socket_s* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @FPM_AF_UNIX, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load %struct.listening_socket_s*, %struct.listening_socket_s** %13, align 8
  %136 = getelementptr inbounds %struct.listening_socket_s, %struct.listening_socket_s* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @unlink(i8* %137)
  br label %139

139:                                              ; preds = %134, %128
  br label %140

140:                                              ; preds = %139, %124
  %141 = load %struct.listening_socket_s*, %struct.listening_socket_s** %13, align 8
  %142 = getelementptr inbounds %struct.listening_socket_s, %struct.listening_socket_s* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @free(i8* %143)
  br label %145

145:                                              ; preds = %140
  %146 = load i32, i32* %5, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %5, align 4
  %148 = load %struct.listening_socket_s*, %struct.listening_socket_s** %13, align 8
  %149 = getelementptr inbounds %struct.listening_socket_s, %struct.listening_socket_s* %148, i32 1
  store %struct.listening_socket_s* %149, %struct.listening_socket_s** %13, align 8
  br label %20

150:                                              ; preds = %20
  %151 = load i8*, i8** %11, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %184

153:                                              ; preds = %150
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %178, %153
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* %6, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %158, label %181

158:                                              ; preds = %154
  %159 = load i32, i32* %5, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %163 = call i32 @strcpy(i8* %162, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %168

164:                                              ; preds = %158
  %165 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %166 = load i32, i32* %5, align 4
  %167 = call i64 (i8*, i8*, ...) @sprintf(i8* %165, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %164, %161
  %169 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %170 = load i8*, i8** %11, align 8
  %171 = load i32, i32* %5, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %18, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %170, i64 %175
  %177 = call i32 @setenv(i8* %169, i8* %176, i32 1)
  br label %178

178:                                              ; preds = %168
  %179 = load i32, i32* %5, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %5, align 4
  br label %154

181:                                              ; preds = %154
  %182 = load i8*, i8** %11, align 8
  %183 = call i32 @free(i8* %182)
  br label %184

184:                                              ; preds = %181, %150
  %185 = call i32 @fpm_array_free(%struct.TYPE_3__* @sockets_list)
  %186 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %186)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @close(i32) #2

declare dso_local i64 @sprintf(i8*, i8*, ...) #2

declare dso_local i8* @realloc(i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @setenv(i8*, i8*, i32) #2

declare dso_local i32 @fpm_array_free(%struct.TYPE_3__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
