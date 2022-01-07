; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_conf.c_fpm_worker_pool_config_free.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_conf.c_fpm_worker_pool_config_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_config_s = type { %struct.key_value_s*, %struct.key_value_s*, %struct.key_value_s*, %struct.key_value_s*, %struct.key_value_s*, %struct.key_value_s*, %struct.key_value_s*, %struct.key_value_s*, %struct.key_value_s*, %struct.key_value_s*, %struct.key_value_s*, %struct.key_value_s*, %struct.key_value_s*, %struct.key_value_s*, %struct.key_value_s*, %struct.key_value_s*, %struct.key_value_s*, %struct.key_value_s*, %struct.key_value_s*, %struct.key_value_s*, %struct.key_value_s*, %struct.key_value_s* }
%struct.key_value_s = type { %struct.key_value_s*, %struct.key_value_s*, %struct.key_value_s* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_worker_pool_config_free(%struct.fpm_worker_pool_config_s* %0) #0 {
  %2 = alloca %struct.fpm_worker_pool_config_s*, align 8
  %3 = alloca %struct.key_value_s*, align 8
  %4 = alloca %struct.key_value_s*, align 8
  store %struct.fpm_worker_pool_config_s* %0, %struct.fpm_worker_pool_config_s** %2, align 8
  %5 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %2, align 8
  %6 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %5, i32 0, i32 21
  %7 = load %struct.key_value_s*, %struct.key_value_s** %6, align 8
  %8 = call i32 @free(%struct.key_value_s* %7)
  %9 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %2, align 8
  %10 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %9, i32 0, i32 20
  %11 = load %struct.key_value_s*, %struct.key_value_s** %10, align 8
  %12 = call i32 @free(%struct.key_value_s* %11)
  %13 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %2, align 8
  %14 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %13, i32 0, i32 19
  %15 = load %struct.key_value_s*, %struct.key_value_s** %14, align 8
  %16 = call i32 @free(%struct.key_value_s* %15)
  %17 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %2, align 8
  %18 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %17, i32 0, i32 18
  %19 = load %struct.key_value_s*, %struct.key_value_s** %18, align 8
  %20 = call i32 @free(%struct.key_value_s* %19)
  %21 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %2, align 8
  %22 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %21, i32 0, i32 17
  %23 = load %struct.key_value_s*, %struct.key_value_s** %22, align 8
  %24 = call i32 @free(%struct.key_value_s* %23)
  %25 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %2, align 8
  %26 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %25, i32 0, i32 16
  %27 = load %struct.key_value_s*, %struct.key_value_s** %26, align 8
  %28 = call i32 @free(%struct.key_value_s* %27)
  %29 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %2, align 8
  %30 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %29, i32 0, i32 15
  %31 = load %struct.key_value_s*, %struct.key_value_s** %30, align 8
  %32 = call i32 @free(%struct.key_value_s* %31)
  %33 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %2, align 8
  %34 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %33, i32 0, i32 14
  %35 = load %struct.key_value_s*, %struct.key_value_s** %34, align 8
  %36 = call i32 @free(%struct.key_value_s* %35)
  %37 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %2, align 8
  %38 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %37, i32 0, i32 13
  %39 = load %struct.key_value_s*, %struct.key_value_s** %38, align 8
  %40 = call i32 @free(%struct.key_value_s* %39)
  %41 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %2, align 8
  %42 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %41, i32 0, i32 12
  %43 = load %struct.key_value_s*, %struct.key_value_s** %42, align 8
  %44 = call i32 @free(%struct.key_value_s* %43)
  %45 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %2, align 8
  %46 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %45, i32 0, i32 11
  %47 = load %struct.key_value_s*, %struct.key_value_s** %46, align 8
  %48 = call i32 @free(%struct.key_value_s* %47)
  %49 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %2, align 8
  %50 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %49, i32 0, i32 10
  %51 = load %struct.key_value_s*, %struct.key_value_s** %50, align 8
  %52 = call i32 @free(%struct.key_value_s* %51)
  %53 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %2, align 8
  %54 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %53, i32 0, i32 9
  %55 = load %struct.key_value_s*, %struct.key_value_s** %54, align 8
  %56 = call i32 @free(%struct.key_value_s* %55)
  %57 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %2, align 8
  %58 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %57, i32 0, i32 8
  %59 = load %struct.key_value_s*, %struct.key_value_s** %58, align 8
  %60 = call i32 @free(%struct.key_value_s* %59)
  %61 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %2, align 8
  %62 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %61, i32 0, i32 7
  %63 = load %struct.key_value_s*, %struct.key_value_s** %62, align 8
  %64 = call i32 @free(%struct.key_value_s* %63)
  %65 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %2, align 8
  %66 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %65, i32 0, i32 6
  %67 = load %struct.key_value_s*, %struct.key_value_s** %66, align 8
  %68 = call i32 @free(%struct.key_value_s* %67)
  %69 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %2, align 8
  %70 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %69, i32 0, i32 5
  %71 = load %struct.key_value_s*, %struct.key_value_s** %70, align 8
  %72 = call i32 @free(%struct.key_value_s* %71)
  %73 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %2, align 8
  %74 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %73, i32 0, i32 4
  %75 = load %struct.key_value_s*, %struct.key_value_s** %74, align 8
  %76 = call i32 @free(%struct.key_value_s* %75)
  %77 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %2, align 8
  %78 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %77, i32 0, i32 2
  %79 = load %struct.key_value_s*, %struct.key_value_s** %78, align 8
  store %struct.key_value_s* %79, %struct.key_value_s** %3, align 8
  br label %80

80:                                               ; preds = %97, %1
  %81 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %82 = icmp ne %struct.key_value_s* %81, null
  br i1 %82, label %83, label %99

83:                                               ; preds = %80
  %84 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %85 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %84, i32 0, i32 2
  %86 = load %struct.key_value_s*, %struct.key_value_s** %85, align 8
  store %struct.key_value_s* %86, %struct.key_value_s** %4, align 8
  %87 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %88 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %87, i32 0, i32 1
  %89 = load %struct.key_value_s*, %struct.key_value_s** %88, align 8
  %90 = call i32 @free(%struct.key_value_s* %89)
  %91 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %92 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %91, i32 0, i32 0
  %93 = load %struct.key_value_s*, %struct.key_value_s** %92, align 8
  %94 = call i32 @free(%struct.key_value_s* %93)
  %95 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %96 = call i32 @free(%struct.key_value_s* %95)
  br label %97

97:                                               ; preds = %83
  %98 = load %struct.key_value_s*, %struct.key_value_s** %4, align 8
  store %struct.key_value_s* %98, %struct.key_value_s** %3, align 8
  br label %80

99:                                               ; preds = %80
  %100 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %2, align 8
  %101 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %100, i32 0, i32 1
  %102 = load %struct.key_value_s*, %struct.key_value_s** %101, align 8
  store %struct.key_value_s* %102, %struct.key_value_s** %3, align 8
  br label %103

103:                                              ; preds = %120, %99
  %104 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %105 = icmp ne %struct.key_value_s* %104, null
  br i1 %105, label %106, label %122

106:                                              ; preds = %103
  %107 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %108 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %107, i32 0, i32 2
  %109 = load %struct.key_value_s*, %struct.key_value_s** %108, align 8
  store %struct.key_value_s* %109, %struct.key_value_s** %4, align 8
  %110 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %111 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %110, i32 0, i32 1
  %112 = load %struct.key_value_s*, %struct.key_value_s** %111, align 8
  %113 = call i32 @free(%struct.key_value_s* %112)
  %114 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %115 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %114, i32 0, i32 0
  %116 = load %struct.key_value_s*, %struct.key_value_s** %115, align 8
  %117 = call i32 @free(%struct.key_value_s* %116)
  %118 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %119 = call i32 @free(%struct.key_value_s* %118)
  br label %120

120:                                              ; preds = %106
  %121 = load %struct.key_value_s*, %struct.key_value_s** %4, align 8
  store %struct.key_value_s* %121, %struct.key_value_s** %3, align 8
  br label %103

122:                                              ; preds = %103
  %123 = load %struct.fpm_worker_pool_config_s*, %struct.fpm_worker_pool_config_s** %2, align 8
  %124 = getelementptr inbounds %struct.fpm_worker_pool_config_s, %struct.fpm_worker_pool_config_s* %123, i32 0, i32 0
  %125 = load %struct.key_value_s*, %struct.key_value_s** %124, align 8
  store %struct.key_value_s* %125, %struct.key_value_s** %3, align 8
  br label %126

126:                                              ; preds = %143, %122
  %127 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %128 = icmp ne %struct.key_value_s* %127, null
  br i1 %128, label %129, label %145

129:                                              ; preds = %126
  %130 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %131 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %130, i32 0, i32 2
  %132 = load %struct.key_value_s*, %struct.key_value_s** %131, align 8
  store %struct.key_value_s* %132, %struct.key_value_s** %4, align 8
  %133 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %134 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %133, i32 0, i32 1
  %135 = load %struct.key_value_s*, %struct.key_value_s** %134, align 8
  %136 = call i32 @free(%struct.key_value_s* %135)
  %137 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %138 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %137, i32 0, i32 0
  %139 = load %struct.key_value_s*, %struct.key_value_s** %138, align 8
  %140 = call i32 @free(%struct.key_value_s* %139)
  %141 = load %struct.key_value_s*, %struct.key_value_s** %3, align 8
  %142 = call i32 @free(%struct.key_value_s* %141)
  br label %143

143:                                              ; preds = %129
  %144 = load %struct.key_value_s*, %struct.key_value_s** %4, align 8
  store %struct.key_value_s* %144, %struct.key_value_s** %3, align 8
  br label %126

145:                                              ; preds = %126
  ret i32 0
}

declare dso_local i32 @free(%struct.key_value_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
