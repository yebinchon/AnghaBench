; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_sockets.c_fpm_sockets_init_main.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_sockets.c_fpm_sockets_init_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.listening_socket_s* }
%struct.listening_socket_s = type { i64, i32, i32, i32 }
%struct.fpm_worker_pool_s = type { i32, i32, i32, %struct.fpm_worker_pool_s* }

@sockets_list = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FPM_ENV_SOCKET_SET_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"FPM_SOCKETS\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"FPM_SOCKETS_%d\00", align 1
@ZLOG_NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"using inherited socket fd=%d, \22%s\22\00", align 1
@FPM_STORE_SOCKET = common dso_local global i32 0, align 4
@fpm_worker_all_pools = common dso_local global %struct.fpm_worker_pool_s* null, align 8
@FPM_SCOREBOARD_ACTION_SET = common dso_local global i32 0, align 4
@FPM_CLEANUP_ALL = common dso_local global i32 0, align 4
@fpm_sockets_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_sockets_init_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpm_worker_pool_s*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca %struct.listening_socket_s*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = call i64 @fpm_array_init(%struct.TYPE_4__* @sockets_list, i32 24, i32 10)
  %15 = icmp eq i64 0, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %203

17:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %102, %17
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @FPM_ENV_SOCKET_SET_MAX, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %105

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %27 = call i32 @strcpy(i8* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %32

28:                                               ; preds = %22
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %25
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %34 = call i8* @getenv(i8* %33)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %105

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %100, %38
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i8*, i8** %7, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi i1 [ false, %39 ], [ %46, %42 ]
  br i1 %48, label %49, label %101

49:                                               ; preds = %47
  %50 = load i8*, i8** %7, align 8
  %51 = call i8* @strchr(i8* %50, i8 signext 44)
  store i8* %51, i8** %9, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i8*, i8** %9, align 8
  store i8 0, i8* %55, align 1
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i8*, i8** %7, align 8
  %58 = call i8* @strchr(i8* %57, i8 signext 61)
  store i8* %58, i8** %12, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %93

61:                                               ; preds = %56
  %62 = load i8*, i8** %12, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp sgt i32 %68, 255
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  store i32 255, i32* %13, align 4
  br label %71

71:                                               ; preds = %70, %61
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @memcpy(i8* %72, i8* %73, i32 %74)
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** %12, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = call i32 @atoi(i8* %80)
  store i32 %81, i32* %11, align 4
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %83 = call i32 @fpm_sockets_domain_from_address(i8* %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* @ZLOG_NOTICE, align 4
  %85 = load i32, i32* %11, align 4
  %86 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %87 = call i32 @zlog(i32 %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %85, i8* %86)
  %88 = load i32, i32* %11, align 4
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @FPM_STORE_SOCKET, align 4
  %92 = call i32 @fpm_sockets_hash_op(i32 %88, i32 0, i8* %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %71, %56
  %94 = load i8*, i8** %9, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  store i8* %98, i8** %7, align 8
  br label %100

99:                                               ; preds = %93
  store i8* null, i8** %7, align 8
  br label %100

100:                                              ; preds = %99, %96
  br label %39

101:                                              ; preds = %47
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %2, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %2, align 4
  br label %18

105:                                              ; preds = %37, %18
  %106 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** @fpm_worker_all_pools, align 8
  store %struct.fpm_worker_pool_s* %106, %struct.fpm_worker_pool_s** %4, align 8
  br label %107

107:                                              ; preds = %154, %105
  %108 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %109 = icmp ne %struct.fpm_worker_pool_s* %108, null
  br i1 %109, label %110, label %158

110:                                              ; preds = %107
  %111 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %112 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  switch i32 %113, label %129 [
    i32 129, label %114
    i32 128, label %119
  ]

114:                                              ; preds = %110
  %115 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %116 = call i32 @fpm_socket_af_inet_listening_socket(%struct.fpm_worker_pool_s* %115)
  %117 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %118 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  br label %129

119:                                              ; preds = %110
  %120 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %121 = call i32 @fpm_unix_resolve_socket_premissions(%struct.fpm_worker_pool_s* %120)
  %122 = icmp sgt i32 0, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  store i32 -1, i32* %1, align 4
  br label %203

124:                                              ; preds = %119
  %125 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %126 = call i32 @fpm_socket_af_unix_listening_socket(%struct.fpm_worker_pool_s* %125)
  %127 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %128 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %110, %124, %114
  %130 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %131 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, -1
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i32 -1, i32* %1, align 4
  br label %203

135:                                              ; preds = %129
  %136 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %137 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 129
  br i1 %139, label %140, label %153

140:                                              ; preds = %135
  %141 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %142 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @fpm_socket_get_listening_queue(i32 %143, i32* null, i32* %3)
  %145 = icmp sge i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %140
  %147 = load i32, i32* %3, align 4
  %148 = load i32, i32* @FPM_SCOREBOARD_ACTION_SET, align 4
  %149 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %150 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @fpm_scoreboard_update(i32 -1, i32 -1, i32 -1, i32 %147, i32 -1, i32 -1, i32 0, i32 %148, i32 %151)
  br label %153

153:                                              ; preds = %146, %140, %135
  br label %154

154:                                              ; preds = %153
  %155 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %4, align 8
  %156 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %155, i32 0, i32 3
  %157 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %156, align 8
  store %struct.fpm_worker_pool_s* %157, %struct.fpm_worker_pool_s** %4, align 8
  br label %107

158:                                              ; preds = %107
  %159 = load %struct.listening_socket_s*, %struct.listening_socket_s** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sockets_list, i32 0, i32 1), align 8
  store %struct.listening_socket_s* %159, %struct.listening_socket_s** %8, align 8
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %195, %158
  %161 = load i32, i32* %2, align 4
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sockets_list, i32 0, i32 0), align 8
  %163 = icmp ult i32 %161, %162
  br i1 %163, label %164, label %196

164:                                              ; preds = %160
  %165 = load %struct.listening_socket_s*, %struct.listening_socket_s** %8, align 8
  %166 = getelementptr inbounds %struct.listening_socket_s, %struct.listening_socket_s* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %190

169:                                              ; preds = %164
  %170 = load %struct.listening_socket_s*, %struct.listening_socket_s** %8, align 8
  %171 = getelementptr inbounds %struct.listening_socket_s, %struct.listening_socket_s* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @close(i32 %172)
  %174 = load %struct.listening_socket_s*, %struct.listening_socket_s** %8, align 8
  %175 = getelementptr inbounds %struct.listening_socket_s, %struct.listening_socket_s* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 128
  br i1 %177, label %178, label %183

178:                                              ; preds = %169
  %179 = load %struct.listening_socket_s*, %struct.listening_socket_s** %8, align 8
  %180 = getelementptr inbounds %struct.listening_socket_s, %struct.listening_socket_s* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @unlink(i32 %181)
  br label %183

183:                                              ; preds = %178, %169
  %184 = load %struct.listening_socket_s*, %struct.listening_socket_s** %8, align 8
  %185 = getelementptr inbounds %struct.listening_socket_s, %struct.listening_socket_s* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @free(i32 %186)
  %188 = load i32, i32* %2, align 4
  %189 = call i32 @fpm_array_item_remove(%struct.TYPE_4__* @sockets_list, i32 %188)
  br label %195

190:                                              ; preds = %164
  %191 = load i32, i32* %2, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %2, align 4
  %193 = load %struct.listening_socket_s*, %struct.listening_socket_s** %8, align 8
  %194 = getelementptr inbounds %struct.listening_socket_s, %struct.listening_socket_s* %193, i32 1
  store %struct.listening_socket_s* %194, %struct.listening_socket_s** %8, align 8
  br label %195

195:                                              ; preds = %190, %183
  br label %160

196:                                              ; preds = %160
  %197 = load i32, i32* @FPM_CLEANUP_ALL, align 4
  %198 = load i32, i32* @fpm_sockets_cleanup, align 4
  %199 = call i64 @fpm_cleanup_add(i32 %197, i32 %198, i32 0)
  %200 = icmp sgt i64 0, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  store i32 -1, i32* %1, align 4
  br label %203

202:                                              ; preds = %196
  store i32 0, i32* %1, align 4
  br label %203

203:                                              ; preds = %202, %201, %134, %123, %16
  %204 = load i32, i32* %1, align 4
  ret i32 %204
}

declare dso_local i64 @fpm_array_init(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @fpm_sockets_domain_from_address(i8*) #1

declare dso_local i32 @zlog(i32, i8*, i32, i8*) #1

declare dso_local i32 @fpm_sockets_hash_op(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @fpm_socket_af_inet_listening_socket(%struct.fpm_worker_pool_s*) #1

declare dso_local i32 @fpm_unix_resolve_socket_premissions(%struct.fpm_worker_pool_s*) #1

declare dso_local i32 @fpm_socket_af_unix_listening_socket(%struct.fpm_worker_pool_s*) #1

declare dso_local i64 @fpm_socket_get_listening_queue(i32, i32*, i32*) #1

declare dso_local i32 @fpm_scoreboard_update(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @fpm_array_item_remove(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @fpm_cleanup_add(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
