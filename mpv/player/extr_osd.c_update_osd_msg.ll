; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_osd.c_update_osd_msg.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_osd.c_update_osd_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i32, double, double, double, i64, i64, i8*, i32, %struct.TYPE_2__, i64, %struct.osd_state*, %struct.MPOpts* }
%struct.TYPE_2__ = type { i32 }
%struct.osd_state = type { i32 }
%struct.MPOpts = type { i32, i32 }

@OSD_BAR_SEEK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_osd_msg(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.MPOpts*, align 8
  %4 = alloca %struct.osd_state*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %14 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %15 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %14, i32 0, i32 12
  %16 = load %struct.MPOpts*, %struct.MPOpts** %15, align 8
  store %struct.MPOpts* %16, %struct.MPOpts** %3, align 8
  %17 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %18 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %17, i32 0, i32 11
  %19 = load %struct.osd_state*, %struct.osd_state** %18, align 8
  store %struct.osd_state* %19, %struct.osd_state** %4, align 8
  %20 = call double (...) @mp_time_sec()
  store double %20, double* %5, align 8
  %21 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %22 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %1
  %26 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %27 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %233

31:                                               ; preds = %25
  store double 5.000000e-02, double* %6, align 8
  %32 = load double, double* %5, align 8
  %33 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %34 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %33, i32 0, i32 2
  %35 = load double, double* %34, align 8
  %36 = fsub double %32, %35
  store double %36, double* %7, align 8
  %37 = load double, double* %7, align 8
  %38 = load double, double* %6, align 8
  %39 = fcmp olt double %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %42 = load double, double* %6, align 8
  %43 = load double, double* %7, align 8
  %44 = fsub double %42, %43
  %45 = call i32 @mp_set_timeout(%struct.MPContext* %41, double %44)
  br label %233

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %49 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %51 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = load double, double* %5, align 8
  %53 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %54 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %53, i32 0, i32 2
  store double %52, double* %54, align 8
  %55 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %56 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %55, i32 0, i32 3
  %57 = load double, double* %56, align 8
  %58 = fcmp une double %57, 0.000000e+00
  br i1 %58, label %59, label %86

59:                                               ; preds = %47
  %60 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %61 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %60, i32 0, i32 3
  %62 = load double, double* %61, align 8
  %63 = load double, double* %5, align 8
  %64 = fsub double %62, %63
  store double %64, double* %8, align 8
  %65 = load double, double* %8, align 8
  %66 = fcmp ogt double %65, 0.000000e+00
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %69 = load double, double* %8, align 8
  %70 = call i32 @mp_set_timeout(%struct.MPContext* %68, double %69)
  %71 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %72 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  br label %85

73:                                               ; preds = %59
  %74 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %75 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %74, i32 0, i32 3
  store double 0.000000e+00, double* %75, align 8
  %76 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %77 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %76, i32 0, i32 9
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 -1, i32* %78, align 4
  %79 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %80 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %79, i32 0, i32 11
  %81 = load %struct.osd_state*, %struct.osd_state** %80, align 8
  %82 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %83 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %82, i32 0, i32 9
  %84 = call i32 @osd_set_progbar(%struct.osd_state* %81, %struct.TYPE_2__* %83)
  br label %85

85:                                               ; preds = %73, %67
  br label %86

86:                                               ; preds = %85, %47
  %87 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %88 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %87, i32 0, i32 4
  %89 = load double, double* %88, align 8
  %90 = fcmp une double %89, 0.000000e+00
  br i1 %90, label %91, label %111

91:                                               ; preds = %86
  %92 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %93 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %92, i32 0, i32 4
  %94 = load double, double* %93, align 8
  %95 = load double, double* %5, align 8
  %96 = fsub double %94, %95
  store double %96, double* %9, align 8
  %97 = load double, double* %9, align 8
  %98 = fcmp ogt double %97, 0.000000e+00
  br i1 %98, label %99, label %105

99:                                               ; preds = %91
  %100 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %101 = load double, double* %9, align 8
  %102 = call i32 @mp_set_timeout(%struct.MPContext* %100, double %101)
  %103 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %104 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %103, i32 0, i32 1
  store i32 1, i32* %104, align 4
  br label %110

105:                                              ; preds = %91
  %106 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %107 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %106, i32 0, i32 4
  store double 0.000000e+00, double* %107, align 8
  %108 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %109 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %108, i32 0, i32 10
  store i64 0, i64* %109, align 8
  br label %110

110:                                              ; preds = %105, %99
  br label %111

111:                                              ; preds = %110, %86
  %112 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %113 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %111
  %117 = load double, double* %5, align 8
  %118 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %119 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = sitofp i64 %120 to double
  %122 = fadd double %117, %121
  %123 = fptosi double %122 to i64
  %124 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %125 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %124, i32 0, i32 6
  store i64 %123, i64* %125, align 8
  %126 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %127 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %126, i32 0, i32 5
  store i64 0, i64* %127, align 8
  br label %128

128:                                              ; preds = %116, %111
  %129 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %130 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %160

133:                                              ; preds = %128
  %134 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %135 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = sitofp i64 %136 to double
  %138 = load double, double* %5, align 8
  %139 = fsub double %137, %138
  store double %139, double* %10, align 8
  %140 = load double, double* %10, align 8
  %141 = fcmp ogt double %140, 0.000000e+00
  br i1 %141, label %142, label %148

142:                                              ; preds = %133
  %143 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %144 = load double, double* %10, align 8
  %145 = call i32 @mp_set_timeout(%struct.MPContext* %143, double %144)
  %146 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %147 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %146, i32 0, i32 1
  store i32 1, i32* %147, align 4
  br label %159

148:                                              ; preds = %133
  %149 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %150 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %149, i32 0, i32 7
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @talloc_free(i8* %151)
  %153 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %154 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %153, i32 0, i32 7
  store i8* null, i8** %154, align 8
  %155 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %156 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %155, i32 0, i32 6
  store i64 0, i64* %156, align 8
  %157 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %158 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %157, i32 0, i32 8
  store i32 0, i32* %158, align 8
  br label %159

159:                                              ; preds = %148, %142
  br label %160

160:                                              ; preds = %159, %128
  %161 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %162 = call i32 @add_seek_osd_messages(%struct.MPContext* %161)
  %163 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %164 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %163, i32 0, i32 9
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @OSD_BAR_SEEK, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %160
  %170 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %171 = call double @get_current_pos_ratio(%struct.MPContext* %170, i32 0)
  store double %171, double* %11, align 8
  %172 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %173 = load i32, i32* @OSD_BAR_SEEK, align 4
  %174 = load double, double* %11, align 8
  %175 = call i32 @MPCLAMP(double %174, i32 0, i32 1)
  %176 = call i32 @update_osd_bar(%struct.MPContext* %172, i32 %173, i32 0, i32 1, i32 %175)
  br label %177

177:                                              ; preds = %169, %160
  %178 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %179 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %180 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %179, i32 0, i32 7
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @term_osd_set_text_lazy(%struct.MPContext* %178, i8* %181)
  %183 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %184 = call i32 @term_osd_print_status_lazy(%struct.MPContext* %183)
  %185 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %186 = call i32 @term_osd_update(%struct.MPContext* %185)
  %187 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %188 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %177
  br label %233

192:                                              ; preds = %177
  %193 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %194 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %12, align 4
  %196 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %197 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %192
  store i32 3, i32* %12, align 4
  br label %201

201:                                              ; preds = %200, %192
  store i8* null, i8** %13, align 8
  %202 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %203 = load i32, i32* %12, align 4
  %204 = call i32 @sadd_osd_status(i8** %13, %struct.MPContext* %202, i32 %203)
  %205 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %206 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %205, i32 0, i32 7
  %207 = load i8*, i8** %206, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %209, label %227

209:                                              ; preds = %201
  %210 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %211 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %210, i32 0, i32 7
  %212 = load i8*, i8** %211, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 0
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %227

217:                                              ; preds = %209
  %218 = load i8*, i8** %13, align 8
  %219 = load i8*, i8** %13, align 8
  %220 = icmp ne i8* %219, null
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %223 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %224 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %223, i32 0, i32 7
  %225 = load i8*, i8** %224, align 8
  %226 = call i8* @talloc_asprintf_append(i8* %218, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %222, i8* %225)
  store i8* %226, i8** %13, align 8
  br label %227

227:                                              ; preds = %217, %209, %201
  %228 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %229 = load i8*, i8** %13, align 8
  %230 = call i32 @osd_set_text(%struct.osd_state* %228, i8* %229)
  %231 = load i8*, i8** %13, align 8
  %232 = call i32 @talloc_free(i8* %231)
  br label %233

233:                                              ; preds = %227, %191, %40, %30
  ret void
}

declare dso_local double @mp_time_sec(...) #1

declare dso_local i32 @mp_set_timeout(%struct.MPContext*, double) #1

declare dso_local i32 @osd_set_progbar(%struct.osd_state*, %struct.TYPE_2__*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i32 @add_seek_osd_messages(%struct.MPContext*) #1

declare dso_local double @get_current_pos_ratio(%struct.MPContext*, i32) #1

declare dso_local i32 @update_osd_bar(%struct.MPContext*, i32, i32, i32, i32) #1

declare dso_local i32 @MPCLAMP(double, i32, i32) #1

declare dso_local i32 @term_osd_set_text_lazy(%struct.MPContext*, i8*) #1

declare dso_local i32 @term_osd_print_status_lazy(%struct.MPContext*) #1

declare dso_local i32 @term_osd_update(%struct.MPContext*) #1

declare dso_local i32 @sadd_osd_status(i8**, %struct.MPContext*, i32) #1

declare dso_local i8* @talloc_asprintf_append(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @osd_set_text(%struct.osd_state*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
