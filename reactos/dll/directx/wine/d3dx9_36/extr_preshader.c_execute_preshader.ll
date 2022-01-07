; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_execute_preshader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_execute_preshader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_info = type { i32, double (double*, i32)*, i64 }
%struct.d3dx_preshader = type { i32, i32, %struct.d3dx_pres_ins* }
%struct.d3dx_pres_ins = type { i64, i32, %struct.TYPE_2__, i64, i32* }
%struct.TYPE_2__ = type { i32 }

@ARGS_ARRAY_SIZE = common dso_local global i32 0, align 4
@pres_op_info = common dso_local global %struct.op_info* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"Too many arguments (%u) for one instruction.\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx_preshader*)* @execute_preshader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_preshader(%struct.d3dx_preshader* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.d3dx_preshader*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.d3dx_pres_ins*, align 8
  %11 = alloca %struct.op_info*, align 8
  %12 = alloca i32, align 4
  store %struct.d3dx_preshader* %0, %struct.d3dx_preshader** %3, align 8
  %13 = load i32, i32* @ARGS_ARRAY_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca double, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %189, %1
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %3, align 8
  %20 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %192

23:                                               ; preds = %17
  %24 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %3, align 8
  %25 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %24, i32 0, i32 2
  %26 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %26, i64 %28
  store %struct.d3dx_pres_ins* %29, %struct.d3dx_pres_ins** %10, align 8
  %30 = load %struct.op_info*, %struct.op_info** @pres_op_info, align 8
  %31 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %10, align 8
  %32 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.op_info, %struct.op_info* %30, i64 %33
  store %struct.op_info* %34, %struct.op_info** %11, align 8
  %35 = load %struct.op_info*, %struct.op_info** %11, align 8
  %36 = getelementptr inbounds %struct.op_info, %struct.op_info* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %126

39:                                               ; preds = %23
  %40 = load %struct.op_info*, %struct.op_info** %11, align 8
  %41 = getelementptr inbounds %struct.op_info, %struct.op_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %10, align 8
  %44 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %42, %45
  %47 = load i32, i32* @ARGS_ARRAY_SIZE, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %39
  %50 = load %struct.op_info*, %struct.op_info** %11, align 8
  %51 = getelementptr inbounds %struct.op_info, %struct.op_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %10, align 8
  %54 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %52, %55
  %57 = call i32 @FIXME(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @E_FAIL, align 4
  store i32 %58, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %194

59:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %108, %59
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.op_info*, %struct.op_info** %11, align 8
  %63 = getelementptr inbounds %struct.op_info, %struct.op_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ult i32 %61, %64
  br i1 %65, label %66, label %111

66:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %104, %66
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %10, align 8
  %70 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ult i32 %68, %71
  br i1 %72, label %73, label %107

73:                                               ; preds = %67
  %74 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %3, align 8
  %75 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %74, i32 0, i32 1
  %76 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %10, align 8
  %77 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %10, align 8
  %83 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %73
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  br label %92

90:                                               ; preds = %86, %73
  %91 = load i32, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %89
  %93 = phi i32 [ 0, %89 ], [ %91, %90 ]
  %94 = call double @exec_get_arg(i32* %75, i32* %81, i32 %93)
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %10, align 8
  %97 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = mul i32 %95, %98
  %100 = load i32, i32* %5, align 4
  %101 = add i32 %99, %100
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds double, double* %16, i64 %102
  store double %94, double* %103, align 8
  br label %104

104:                                              ; preds = %92
  %105 = load i32, i32* %5, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %67

107:                                              ; preds = %67
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %6, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %60

111:                                              ; preds = %60
  %112 = load %struct.op_info*, %struct.op_info** %11, align 8
  %113 = getelementptr inbounds %struct.op_info, %struct.op_info* %112, i32 0, i32 1
  %114 = load double (double*, i32)*, double (double*, i32)** %113, align 8
  %115 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %10, align 8
  %116 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call double %114(double* %16, i32 %117)
  store double %118, double* %9, align 8
  %119 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %3, align 8
  %120 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %119, i32 0, i32 1
  %121 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %10, align 8
  %122 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load double, double* %9, align 8
  %125 = call i32 @exec_set_arg(i32* %120, i32* %123, i32 0, double %124)
  br label %188

126:                                              ; preds = %23
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %184, %126
  %128 = load i32, i32* %5, align 4
  %129 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %10, align 8
  %130 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp ult i32 %128, %131
  br i1 %132, label %133, label %187

133:                                              ; preds = %127
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %165, %133
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.op_info*, %struct.op_info** %11, align 8
  %137 = getelementptr inbounds %struct.op_info, %struct.op_info* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ult i32 %135, %138
  br i1 %139, label %140, label %168

140:                                              ; preds = %134
  %141 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %3, align 8
  %142 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %141, i32 0, i32 1
  %143 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %10, align 8
  %144 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %10, align 8
  %150 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %140
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %153
  br label %159

157:                                              ; preds = %153, %140
  %158 = load i32, i32* %5, align 4
  br label %159

159:                                              ; preds = %157, %156
  %160 = phi i32 [ 0, %156 ], [ %158, %157 ]
  %161 = call double @exec_get_arg(i32* %142, i32* %148, i32 %160)
  %162 = load i32, i32* %6, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds double, double* %16, i64 %163
  store double %161, double* %164, align 8
  br label %165

165:                                              ; preds = %159
  %166 = load i32, i32* %6, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %6, align 4
  br label %134

168:                                              ; preds = %134
  %169 = load %struct.op_info*, %struct.op_info** %11, align 8
  %170 = getelementptr inbounds %struct.op_info, %struct.op_info* %169, i32 0, i32 1
  %171 = load double (double*, i32)*, double (double*, i32)** %170, align 8
  %172 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %10, align 8
  %173 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call double %171(double* %16, i32 %174)
  store double %175, double* %9, align 8
  %176 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %3, align 8
  %177 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %176, i32 0, i32 1
  %178 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %10, align 8
  %179 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i32, i32* %5, align 4
  %182 = load double, double* %9, align 8
  %183 = call i32 @exec_set_arg(i32* %177, i32* %180, i32 %181, double %182)
  br label %184

184:                                              ; preds = %168
  %185 = load i32, i32* %5, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %5, align 4
  br label %127

187:                                              ; preds = %127
  br label %188

188:                                              ; preds = %187, %111
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %4, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %4, align 4
  br label %17

192:                                              ; preds = %17
  %193 = load i32, i32* @D3D_OK, align 4
  store i32 %193, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %194

194:                                              ; preds = %192, %49
  %195 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %195)
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FIXME(i8*, i32) #2

declare dso_local double @exec_get_arg(i32*, i32*, i32) #2

declare dso_local i32 @exec_set_arg(i32*, i32*, i32, double) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
