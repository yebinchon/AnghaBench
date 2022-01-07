; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_env.c_fpm_env_init_main.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_env.c_fpm_env_init_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_s = type { %struct.fpm_worker_pool_s* }
%struct.TYPE_2__ = type { i32, i8**, i32 }

@fpm_worker_all_pools = common dso_local global %struct.fpm_worker_pool_s* null, align 8
@fpm_globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@environ = common dso_local global i8** null, align 8
@fpm_env_argv_len = common dso_local global i32 0, align 4
@fpm_env_argv = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [20 x i8] c"master process (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_env_init_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.fpm_worker_pool_s*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** @fpm_worker_all_pools, align 8
  store %struct.fpm_worker_pool_s* %9, %struct.fpm_worker_pool_s** %2, align 8
  br label %10

10:                                               ; preds = %19, %0
  %11 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %12 = icmp ne %struct.fpm_worker_pool_s* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %15 = call i64 @fpm_env_conf_wp(%struct.fpm_worker_pool_s* %14)
  %16 = icmp sgt i64 0, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 -1, i32* %1, align 4
  br label %185

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %21 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %20, i32 0, i32 0
  %22 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %21, align 8
  store %struct.fpm_worker_pool_s* %22, %struct.fpm_worker_pool_s** %2, align 8
  br label %10

23:                                               ; preds = %10
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %64, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 0), align 8
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %67

28:                                               ; preds = %24
  %29 = load i8*, i8** %5, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 1), align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %5, align 8
  br label %37

37:                                               ; preds = %31, %28
  %38 = load i8*, i8** %6, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 1), align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = icmp eq i8* %45, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %40, %37
  %50 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 1), align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 1), align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %54, i64 %61
  store i8* %62, i8** %6, align 8
  br label %63

63:                                               ; preds = %49, %40
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %24

67:                                               ; preds = %24
  %68 = load i8**, i8*** @environ, align 8
  %69 = icmp ne i8** %68, null
  br i1 %69, label %70, label %118

70:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %114, %70
  %72 = load i8**, i8*** @environ, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %117

78:                                               ; preds = %71
  %79 = load i8*, i8** %5, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i8**, i8*** @environ, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %5, align 8
  br label %87

87:                                               ; preds = %81, %78
  %88 = load i8*, i8** %6, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %99, label %90

90:                                               ; preds = %87
  %91 = load i8**, i8*** @environ, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = icmp eq i8* %95, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %90, %87
  %100 = load i8**, i8*** @environ, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = load i8**, i8*** @environ, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @strlen(i8* %109)
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %104, i64 %111
  store i8* %112, i8** %6, align 8
  br label %113

113:                                              ; preds = %99, %90
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %4, align 4
  br label %71

117:                                              ; preds = %71
  br label %118

118:                                              ; preds = %117, %67
  %119 = load i8*, i8** %5, align 8
  %120 = icmp eq i8* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i8*, i8** %6, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %121, %118
  store i32 0, i32* %1, align 4
  br label %185

125:                                              ; preds = %121
  %126 = load i8*, i8** %6, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = ptrtoint i8* %126 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* @fpm_env_argv_len, align 4
  %132 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 1), align 8
  store i8** %132, i8*** @fpm_env_argv, align 8
  %133 = load i8**, i8*** @environ, align 8
  %134 = icmp ne i8** %133, null
  br i1 %134, label %135, label %178

135:                                              ; preds = %125
  store i32 0, i32* %8, align 4
  br label %136

136:                                              ; preds = %143, %135
  %137 = load i8**, i8*** @environ, align 8
  %138 = load i32, i32* %8, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load i32, i32* %8, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %136

146:                                              ; preds = %136
  %147 = load i32, i32* %8, align 4
  %148 = add i32 1, %147
  %149 = zext i32 %148 to i64
  %150 = mul i64 %149, 8
  %151 = trunc i64 %150 to i32
  %152 = call i8** @malloc(i32 %151)
  store i8** %152, i8*** %7, align 8
  %153 = icmp eq i8** %152, null
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  store i32 -1, i32* %1, align 4
  br label %185

155:                                              ; preds = %146
  %156 = load i8**, i8*** %7, align 8
  %157 = load i32, i32* %8, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  store i8* null, i8** %159, align 8
  br label %160

160:                                              ; preds = %163, %155
  %161 = load i32, i32* %8, align 4
  %162 = icmp ugt i32 %161, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %160
  %164 = load i32, i32* %8, align 4
  %165 = add i32 %164, -1
  store i32 %165, i32* %8, align 4
  %166 = load i8**, i8*** @environ, align 8
  %167 = load i32, i32* %8, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %166, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = call i8* @strdup(i8* %170)
  %172 = load i8**, i8*** %7, align 8
  %173 = load i32, i32* %8, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  store i8* %171, i8** %175, align 8
  br label %160

176:                                              ; preds = %160
  %177 = load i8**, i8*** %7, align 8
  store i8** %177, i8*** @environ, align 8
  br label %178

178:                                              ; preds = %176, %125
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 2), align 8
  %180 = call i32 @spprintf(i8** %3, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %179)
  %181 = load i8*, i8** %3, align 8
  %182 = call i32 @fpm_env_setproctitle(i8* %181)
  %183 = load i8*, i8** %3, align 8
  %184 = call i32 @efree(i8* %183)
  store i32 0, i32* %1, align 4
  br label %185

185:                                              ; preds = %178, %154, %124, %17
  %186 = load i32, i32* %1, align 4
  ret i32 %186
}

declare dso_local i64 @fpm_env_conf_wp(%struct.fpm_worker_pool_s*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8** @malloc(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @spprintf(i8**, i32, i8*, i32) #1

declare dso_local i32 @fpm_env_setproctitle(i8*) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
