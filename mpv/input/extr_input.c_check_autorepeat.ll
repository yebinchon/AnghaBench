; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_check_autorepeat.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_check_autorepeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd = type { i32 }
%struct.input_ctx = type { i32, i32, i64, i64, i32, %struct.input_opts* }
%struct.input_opts = type { i32, i32 }

@MP_NO_REPEAT_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_cmd* (%struct.input_ctx*)* @check_autorepeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_cmd* @check_autorepeat(%struct.input_ctx* %0) #0 {
  %2 = alloca %struct.mp_cmd*, align 8
  %3 = alloca %struct.input_ctx*, align 8
  %4 = alloca %struct.input_opts*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mp_cmd*, align 8
  store %struct.input_ctx* %0, %struct.input_ctx** %3, align 8
  %7 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %7, i32 0, i32 5
  %9 = load %struct.input_opts*, %struct.input_opts** %8, align 8
  store %struct.input_opts* %9, %struct.input_opts** %4, align 8
  %10 = load %struct.input_opts*, %struct.input_opts** %4, align 8
  %11 = getelementptr inbounds %struct.input_opts, %struct.input_opts* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %1
  %15 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %14
  %20 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MP_NO_REPEAT_KEY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %24
  %32 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mp_input_is_repeatable_cmd(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31, %24, %19, %14, %1
  %38 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %38, i32 0, i32 1
  store i32 -1, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %31
  %41 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %125

45:                                               ; preds = %40
  %46 = call i64 (...) @mp_time_us()
  store i64 %46, i64* %5, align 8
  %47 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 2000000
  %51 = load i64, i64* %5, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %45
  %58 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %59 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %57
  %63 = load i64, i64* %5, align 8
  %64 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %65 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %63, %66
  %68 = load %struct.input_opts*, %struct.input_opts** %4, align 8
  %69 = getelementptr inbounds %struct.input_opts, %struct.input_opts* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %70, 1000
  %72 = sext i32 %71 to i64
  %73 = icmp sge i64 %67, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %62
  %75 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %76 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  %77 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %78 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.input_opts*, %struct.input_opts** %4, align 8
  %81 = getelementptr inbounds %struct.input_opts, %struct.input_opts* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %82, 1000
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %79, %84
  %86 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %87 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  br label %117

88:                                               ; preds = %62, %57
  %89 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %90 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %115

93:                                               ; preds = %88
  %94 = load i64, i64* %5, align 8
  %95 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %96 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %94, %97
  %99 = load %struct.input_opts*, %struct.input_opts** %4, align 8
  %100 = getelementptr inbounds %struct.input_opts, %struct.input_opts* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sdiv i32 1000000, %101
  %103 = sext i32 %102 to i64
  %104 = icmp sge i64 %98, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %93
  %106 = load %struct.input_opts*, %struct.input_opts** %4, align 8
  %107 = getelementptr inbounds %struct.input_opts, %struct.input_opts* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sdiv i32 1000000, %108
  %110 = sext i32 %109 to i64
  %111 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %112 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, %110
  store i64 %114, i64* %112, align 8
  br label %116

115:                                              ; preds = %93, %88
  store %struct.mp_cmd* null, %struct.mp_cmd** %2, align 8
  br label %126

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %116, %74
  %118 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %119 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = call %struct.mp_cmd* @mp_cmd_clone(i32 %120)
  store %struct.mp_cmd* %121, %struct.mp_cmd** %6, align 8
  %122 = load %struct.mp_cmd*, %struct.mp_cmd** %6, align 8
  %123 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %122, i32 0, i32 0
  store i32 1, i32* %123, align 4
  %124 = load %struct.mp_cmd*, %struct.mp_cmd** %6, align 8
  store %struct.mp_cmd* %124, %struct.mp_cmd** %2, align 8
  br label %126

125:                                              ; preds = %40
  store %struct.mp_cmd* null, %struct.mp_cmd** %2, align 8
  br label %126

126:                                              ; preds = %125, %117, %115
  %127 = load %struct.mp_cmd*, %struct.mp_cmd** %2, align 8
  ret %struct.mp_cmd* %127
}

declare dso_local i32 @mp_input_is_repeatable_cmd(i32) #1

declare dso_local i64 @mp_time_us(...) #1

declare dso_local %struct.mp_cmd* @mp_cmd_clone(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
