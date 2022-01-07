; ModuleID = '/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_dev_cpu_temperature.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/freebsd.plugin/extr_freebsd_sysctl.c_do_dev_cpu_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_dev_cpu_temperature.mib = internal global i32* null, align 8
@do_dev_cpu_temperature.pcpu_temperature = internal global i32* null, align 8
@do_dev_cpu_temperature.old_number_of_cpus = internal global i32 0, align 4
@MAX_INT_DIGITS = common dso_local global i32 0, align 4
@number_of_cpus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"dev.cpu.%d.temperature\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"DISABLED: cpu.temperature chart\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"DISABLED: dev.cpu.temperature module\00", align 1
@do_dev_cpu_temperature.st = internal global i32* null, align 8
@do_dev_cpu_temperature.rd_pcpu_temperature = internal global i32** null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"cpu.temperatute\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Core temperature\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Celsius\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"freebsd.plugin\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"dev.cpu.temperature\00", align 1
@NETDATA_CHART_PRIO_CPU_TEMPERATURE = common dso_local global i32 0, align 4
@RRDSET_TYPE_LINE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"cpu%d.temp\00", align 1
@RRD_ALGORITHM_ABSOLUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_dev_cpu_temperature(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @MAX_INT_DIGITS, align 4
  %13 = add nsw i32 %12, 21
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* @MAX_INT_DIGITS, align 4
  %18 = add nsw i32 %17, 9
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %21 = load i32, i32* @number_of_cpus, align 4
  %22 = load i32, i32* @do_dev_cpu_temperature.old_number_of_cpus, align 4
  %23 = icmp ne i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %64

27:                                               ; preds = %2
  %28 = load i32*, i32** @do_dev_cpu_temperature.pcpu_temperature, align 8
  %29 = load i32, i32* @number_of_cpus, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = call i8* @reallocz(i32* %28, i32 %32)
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** @do_dev_cpu_temperature.pcpu_temperature, align 8
  %35 = load i32*, i32** @do_dev_cpu_temperature.mib, align 8
  %36 = load i32, i32* @number_of_cpus, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i8* @reallocz(i32* %35, i32 %40)
  %42 = bitcast i8* %41 to i32*
  store i32* %42, i32** @do_dev_cpu_temperature.mib, align 8
  %43 = load i32, i32* @number_of_cpus, align 4
  %44 = load i32, i32* @do_dev_cpu_temperature.old_number_of_cpus, align 4
  %45 = icmp sgt i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %27
  %50 = load i32*, i32** @do_dev_cpu_temperature.mib, align 8
  %51 = load i32, i32* @do_dev_cpu_temperature.old_number_of_cpus, align 4
  %52 = mul nsw i32 %51, 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* @number_of_cpus, align 4
  %56 = load i32, i32* @do_dev_cpu_temperature.old_number_of_cpus, align 4
  %57 = sub nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = mul i64 4, %58
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = call i32 @memset(i32* %54, i32 0, i32 %61)
  br label %63

63:                                               ; preds = %49, %27
  br label %64

64:                                               ; preds = %63, %2
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %101, %64
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @number_of_cpus, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %104

69:                                               ; preds = %65
  %70 = load i32*, i32** @do_dev_cpu_temperature.mib, align 8
  %71 = load i32, i32* %6, align 4
  %72 = mul nsw i32 %71, 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %69
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %81, %69
  %85 = load i32*, i32** @do_dev_cpu_temperature.mib, align 8
  %86 = load i32, i32* %6, align 4
  %87 = mul nsw i32 %86, 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32*, i32** @do_dev_cpu_temperature.pcpu_temperature, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = call i32 @getsysctl_simple(i8* %16, i32* %89, i32 4, i32* %93, i32 4)
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %84
  %98 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %99 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %205

100:                                              ; preds = %84
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %65

104:                                              ; preds = %65
  %105 = load i32, i32* @number_of_cpus, align 4
  %106 = load i32, i32* @do_dev_cpu_temperature.old_number_of_cpus, align 4
  %107 = icmp ne i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %140

111:                                              ; preds = %104
  %112 = load i32**, i32*** @do_dev_cpu_temperature.rd_pcpu_temperature, align 8
  %113 = bitcast i32** %112 to i32*
  %114 = load i32, i32* @number_of_cpus, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 4, %115
  %117 = trunc i64 %116 to i32
  %118 = call i8* @reallocz(i32* %113, i32 %117)
  %119 = bitcast i8* %118 to i32**
  store i32** %119, i32*** @do_dev_cpu_temperature.rd_pcpu_temperature, align 8
  %120 = load i32, i32* @number_of_cpus, align 4
  %121 = load i32, i32* @do_dev_cpu_temperature.old_number_of_cpus, align 4
  %122 = icmp sgt i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %111
  %127 = load i32**, i32*** @do_dev_cpu_temperature.rd_pcpu_temperature, align 8
  %128 = load i32, i32* @do_dev_cpu_temperature.old_number_of_cpus, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  %131 = bitcast i32** %130 to i32*
  %132 = load i32, i32* @number_of_cpus, align 4
  %133 = load i32, i32* @do_dev_cpu_temperature.old_number_of_cpus, align 4
  %134 = sub nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = mul i64 4, %135
  %137 = trunc i64 %136 to i32
  %138 = call i32 @memset(i32* %131, i32 0, i32 %137)
  br label %139

139:                                              ; preds = %126, %111
  br label %140

140:                                              ; preds = %139, %104
  %141 = load i32*, i32** @do_dev_cpu_temperature.st, align 8
  %142 = icmp ne i32* %141, null
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = call i64 @unlikely(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %140
  %148 = load i32, i32* @NETDATA_CHART_PRIO_CPU_TEMPERATURE, align 4
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* @RRDSET_TYPE_LINE, align 4
  %151 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %148, i32 %149, i32 %150)
  store i32* %151, i32** @do_dev_cpu_temperature.st, align 8
  br label %155

152:                                              ; preds = %140
  %153 = load i32*, i32** @do_dev_cpu_temperature.st, align 8
  %154 = call i32 @rrdset_next(i32* %153)
  br label %155

155:                                              ; preds = %152, %147
  store i32 0, i32* %6, align 4
  br label %156

156:                                              ; preds = %198, %155
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* @number_of_cpus, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %201

160:                                              ; preds = %156
  %161 = load i32**, i32*** @do_dev_cpu_temperature.rd_pcpu_temperature, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %161, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  %167 = xor i1 %166, true
  %168 = zext i1 %167 to i32
  %169 = call i64 @unlikely(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %160
  %172 = load i32, i32* %6, align 4
  %173 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %172)
  %174 = load i32*, i32** @do_dev_cpu_temperature.st, align 8
  %175 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %176 = call i32* @rrddim_add(i32* %174, i8* %20, i32* null, i32 1, i32 1, i32 %175)
  %177 = load i32**, i32*** @do_dev_cpu_temperature.rd_pcpu_temperature, align 8
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32*, i32** %177, i64 %179
  store i32* %176, i32** %180, align 8
  br label %181

181:                                              ; preds = %171, %160
  %182 = load i32*, i32** @do_dev_cpu_temperature.st, align 8
  %183 = load i32**, i32*** @do_dev_cpu_temperature.rd_pcpu_temperature, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32*, i32** %183, i64 %185
  %187 = load i32*, i32** %186, align 8
  %188 = load i32*, i32** @do_dev_cpu_temperature.pcpu_temperature, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = sitofp i32 %192 to double
  %194 = fdiv double %193, 1.000000e+01
  %195 = fsub double %194, 2.731500e+02
  %196 = fptosi double %195 to i32
  %197 = call i32 @rrddim_set_by_pointer(i32* %182, i32* %187, i32 %196)
  br label %198

198:                                              ; preds = %181
  %199 = load i32, i32* %6, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %6, align 4
  br label %156

201:                                              ; preds = %156
  %202 = load i32*, i32** @do_dev_cpu_temperature.st, align 8
  %203 = call i32 @rrdset_done(i32* %202)
  %204 = load i32, i32* @number_of_cpus, align 4
  store i32 %204, i32* @do_dev_cpu_temperature.old_number_of_cpus, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %205

205:                                              ; preds = %201, %97
  %206 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %206)
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i8* @reallocz(i32*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @getsysctl_simple(i8*, i32*, i32, i32*, i32) #2

declare dso_local i32 @error(i8*) #2

declare dso_local i32* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @rrdset_next(i32*) #2

declare dso_local i32* @rrddim_add(i32*, i8*, i32*, i32, i32, i32) #2

declare dso_local i32 @rrddim_set_by_pointer(i32*, i32*, i32) #2

declare dso_local i32 @rrdset_done(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
