; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_HandleUDDrag.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_HandleUDDrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@CCS_VERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"There are no bands in this rebar\0A\00", align 1
@RBBS_BREAK = common dso_local global i32 0, align 4
@REBAR_PRE_GRIPPER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_17__*)* @REBAR_HandleUDDrag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @REBAR_HandleUDDrag(%struct.TYPE_15__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CCS_VERT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i32 [ %20, %17 ], [ %24, %21 ]
  store i32 %26, i32* %5, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %25
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %222

39:                                               ; preds = %33
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call %struct.TYPE_16__* @REBAR_GetBand(%struct.TYPE_15__* %43, i32 %44)
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %9, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @RBBS_BREAK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %39
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 1
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %52
  %60 = load i32, i32* @RBBS_BREAK, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  %64 = call %struct.TYPE_16__* @REBAR_GetBand(%struct.TYPE_15__* %61, i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %60
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %59, %52, %39
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %114

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %71
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %87, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %81 = call %struct.TYPE_16__* @REBAR_GetBand(%struct.TYPE_15__* %80, i32 1)
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @RBBS_BREAK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79, %74
  br label %222

88:                                               ; preds = %79, %71
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @DPA_DeletePtr(i32 %91, i32 %92)
  %94 = load i32, i32* @RBBS_BREAK, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* @RBBS_BREAK, align 4
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %102 = call %struct.TYPE_16__* @REBAR_GetBand(%struct.TYPE_15__* %101, i32 0)
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %100
  store i32 %105, i32* %103, align 4
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %110 = call i8* @DPA_InsertPtr(i32 %108, i32 0, %struct.TYPE_16__* %109)
  %111 = ptrtoint i8* %110 to i32
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  br label %219

114:                                              ; preds = %68
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %119, 1
  %121 = call %struct.TYPE_16__* @REBAR_GetBand(%struct.TYPE_15__* %116, i32 %120)
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %115, %124
  br i1 %125, label %126, label %164

126:                                              ; preds = %114
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %130, 1
  %132 = icmp eq i32 %127, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %126
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @RBBS_BREAK, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %222

141:                                              ; preds = %133, %126
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @DPA_DeletePtr(i32 %144, i32 %145)
  %147 = load i32, i32* @RBBS_BREAK, align 4
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 %157, 1
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %160 = call i8* @DPA_InsertPtr(i32 %154, i32 %158, %struct.TYPE_16__* %159)
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 4
  br label %218

164:                                              ; preds = %114
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %166 = call i32 @first_visible(%struct.TYPE_15__* %165)
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %215, %164
  %168 = load i32, i32* %7, align 4
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %217

173:                                              ; preds = %167
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @get_row_end_for_band(%struct.TYPE_15__* %174, i32 %175)
  store i32 %176, i32* %8, align 4
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %178 = load i32, i32* %7, align 4
  %179 = call %struct.TYPE_16__* @REBAR_GetBand(%struct.TYPE_15__* %177, i32 %178)
  store %struct.TYPE_16__* %179, %struct.TYPE_16__** %10, align 8
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %5, align 4
  %185 = icmp sgt i32 %183, %184
  br i1 %185, label %186, label %215

186:                                              ; preds = %173
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* %8, align 4
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @CCS_VERT, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %186
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  br label %205

201:                                              ; preds = %186
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  br label %205

205:                                              ; preds = %201, %197
  %206 = phi i32 [ %200, %197 ], [ %204, %201 ]
  %207 = load i32, i32* @REBAR_PRE_GRIPPER, align 4
  %208 = sub nsw i32 %206, %207
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = sub nsw i32 %208, %211
  %213 = load i32, i32* @FALSE, align 4
  %214 = call i32 @REBAR_MoveBandToRowOffset(%struct.TYPE_15__* %187, i32 %188, i32 %189, i32 %190, i32 %212, i32 %213)
  br label %217

215:                                              ; preds = %173
  %216 = load i32, i32* %8, align 4
  store i32 %216, i32* %7, align 4
  br label %167

217:                                              ; preds = %205, %167
  br label %218

218:                                              ; preds = %217, %141
  br label %219

219:                                              ; preds = %218, %88
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %221 = call i32 @REBAR_Layout(%struct.TYPE_15__* %220)
  br label %222

222:                                              ; preds = %219, %140, %87, %38
  ret void
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local %struct.TYPE_16__* @REBAR_GetBand(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @DPA_DeletePtr(i32, i32) #1

declare dso_local i8* @DPA_InsertPtr(i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @first_visible(%struct.TYPE_15__*) #1

declare dso_local i32 @get_row_end_for_band(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @REBAR_MoveBandToRowOffset(%struct.TYPE_15__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REBAR_Layout(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
