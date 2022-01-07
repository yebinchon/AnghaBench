; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/lateral_mpc/lib_mpc_export/extr_acado_solver.c_acado_shiftStates.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/lateral_mpc/lib_mpc_export/extr_acado_solver.c_acado_shiftStates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8**, i8**, i8** }
%struct.TYPE_3__ = type { i8** }

@acadoVariables = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@acadoWorkspace = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acado_shiftStates(i32 %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %63, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 20
  br i1 %10, label %11, label %66

11:                                               ; preds = %8
  %12 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %13 = load i32, i32* %7, align 4
  %14 = mul nsw i32 %13, 4
  %15 = add nsw i32 %14, 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %12, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %20 = load i32, i32* %7, align 4
  %21 = mul nsw i32 %20, 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %19, i64 %22
  store i8* %18, i8** %23, align 8
  %24 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 %25, 4
  %27 = add nsw i32 %26, 5
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %24, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %32 = load i32, i32* %7, align 4
  %33 = mul nsw i32 %32, 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %31, i64 %35
  store i8* %30, i8** %36, align 8
  %37 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %38, 4
  %40 = add nsw i32 %39, 6
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %37, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %45 = load i32, i32* %7, align 4
  %46 = mul nsw i32 %45, 4
  %47 = add nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %44, i64 %48
  store i8* %43, i8** %49, align 8
  %50 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 %51, 4
  %53 = add nsw i32 %52, 7
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %50, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %58 = load i32, i32* %7, align 4
  %59 = mul nsw i32 %58, 4
  %60 = add nsw i32 %59, 3
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %57, i64 %61
  store i8* %56, i8** %62, align 8
  br label %63

63:                                               ; preds = %11
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %8

66:                                               ; preds = %8
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %93

69:                                               ; preds = %66
  %70 = load i8**, i8*** %5, align 8
  %71 = icmp ne i8** %70, null
  br i1 %71, label %72, label %93

72:                                               ; preds = %69
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 80
  store i8* %75, i8** %77, align 8
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i8*, i8** %79, align 8
  %81 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 81
  store i8* %80, i8** %82, align 8
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 2
  %85 = load i8*, i8** %84, align 8
  %86 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 82
  store i8* %85, i8** %87, align 8
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 3
  %90 = load i8*, i8** %89, align 8
  %91 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 83
  store i8* %90, i8** %92, align 8
  br label %240

93:                                               ; preds = %69, %66
  %94 = load i32, i32* %4, align 4
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %239

96:                                               ; preds = %93
  %97 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 80
  %99 = load i8*, i8** %98, align 8
  %100 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  store i8* %99, i8** %101, align 8
  %102 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 81
  %104 = load i8*, i8** %103, align 8
  %105 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 1
  store i8* %104, i8** %106, align 8
  %107 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 82
  %109 = load i8*, i8** %108, align 8
  %110 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 2
  store i8* %109, i8** %111, align 8
  %112 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 83
  %114 = load i8*, i8** %113, align 8
  %115 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 3
  store i8* %114, i8** %116, align 8
  %117 = load i8**, i8*** %6, align 8
  %118 = icmp ne i8** %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %96
  %120 = load i8**, i8*** %6, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 0
  %122 = load i8*, i8** %121, align 8
  %123 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 24
  store i8* %122, i8** %124, align 8
  br label %131

125:                                              ; preds = %96
  %126 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 2), align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 19
  %128 = load i8*, i8** %127, align 8
  %129 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 24
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %125, %119
  %132 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 340
  %134 = load i8*, i8** %133, align 8
  %135 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 25
  store i8* %134, i8** %136, align 8
  %137 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 341
  %139 = load i8*, i8** %138, align 8
  %140 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 26
  store i8* %139, i8** %141, align 8
  %142 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 342
  %144 = load i8*, i8** %143, align 8
  %145 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 27
  store i8* %144, i8** %146, align 8
  %147 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 343
  %149 = load i8*, i8** %148, align 8
  %150 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 28
  store i8* %149, i8** %151, align 8
  %152 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 344
  %154 = load i8*, i8** %153, align 8
  %155 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 29
  store i8* %154, i8** %156, align 8
  %157 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 345
  %159 = load i8*, i8** %158, align 8
  %160 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 30
  store i8* %159, i8** %161, align 8
  %162 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %163 = getelementptr inbounds i8*, i8** %162, i64 346
  %164 = load i8*, i8** %163, align 8
  %165 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 31
  store i8* %164, i8** %166, align 8
  %167 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 347
  %169 = load i8*, i8** %168, align 8
  %170 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %171 = getelementptr inbounds i8*, i8** %170, i64 32
  store i8* %169, i8** %171, align 8
  %172 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 348
  %174 = load i8*, i8** %173, align 8
  %175 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 33
  store i8* %174, i8** %176, align 8
  %177 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %178 = getelementptr inbounds i8*, i8** %177, i64 349
  %179 = load i8*, i8** %178, align 8
  %180 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %181 = getelementptr inbounds i8*, i8** %180, i64 34
  store i8* %179, i8** %181, align 8
  %182 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 350
  %184 = load i8*, i8** %183, align 8
  %185 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 35
  store i8* %184, i8** %186, align 8
  %187 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %188 = getelementptr inbounds i8*, i8** %187, i64 351
  %189 = load i8*, i8** %188, align 8
  %190 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %191 = getelementptr inbounds i8*, i8** %190, i64 36
  store i8* %189, i8** %191, align 8
  %192 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %193 = getelementptr inbounds i8*, i8** %192, i64 352
  %194 = load i8*, i8** %193, align 8
  %195 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %196 = getelementptr inbounds i8*, i8** %195, i64 37
  store i8* %194, i8** %196, align 8
  %197 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 353
  %199 = load i8*, i8** %198, align 8
  %200 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 38
  store i8* %199, i8** %201, align 8
  %202 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %203 = getelementptr inbounds i8*, i8** %202, i64 354
  %204 = load i8*, i8** %203, align 8
  %205 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %206 = getelementptr inbounds i8*, i8** %205, i64 39
  store i8* %204, i8** %206, align 8
  %207 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %208 = getelementptr inbounds i8*, i8** %207, i64 355
  %209 = load i8*, i8** %208, align 8
  %210 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %211 = getelementptr inbounds i8*, i8** %210, i64 40
  store i8* %209, i8** %211, align 8
  %212 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 1), align 8
  %213 = getelementptr inbounds i8*, i8** %212, i64 356
  %214 = load i8*, i8** %213, align 8
  %215 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %216 = getelementptr inbounds i8*, i8** %215, i64 41
  store i8* %214, i8** %216, align 8
  %217 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %218 = call i32 @acado_integrate(i8** %217, i32 1, i32 19)
  %219 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %220 = getelementptr inbounds i8*, i8** %219, i64 0
  %221 = load i8*, i8** %220, align 8
  %222 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %223 = getelementptr inbounds i8*, i8** %222, i64 80
  store i8* %221, i8** %223, align 8
  %224 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %225 = getelementptr inbounds i8*, i8** %224, i64 1
  %226 = load i8*, i8** %225, align 8
  %227 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %228 = getelementptr inbounds i8*, i8** %227, i64 81
  store i8* %226, i8** %228, align 8
  %229 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %230 = getelementptr inbounds i8*, i8** %229, i64 2
  %231 = load i8*, i8** %230, align 8
  %232 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %233 = getelementptr inbounds i8*, i8** %232, i64 82
  store i8* %231, i8** %233, align 8
  %234 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @acadoWorkspace, i32 0, i32 0), align 8
  %235 = getelementptr inbounds i8*, i8** %234, i64 3
  %236 = load i8*, i8** %235, align 8
  %237 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acadoVariables, i32 0, i32 0), align 8
  %238 = getelementptr inbounds i8*, i8** %237, i64 83
  store i8* %236, i8** %238, align 8
  br label %239

239:                                              ; preds = %131, %93
  br label %240

240:                                              ; preds = %239, %72
  ret void
}

declare dso_local i32 @acado_integrate(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
