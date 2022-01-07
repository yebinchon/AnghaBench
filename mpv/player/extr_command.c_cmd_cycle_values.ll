; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_cycle_values.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_cycle_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32, i32, %struct.TYPE_4__*, %struct.MPContext* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.MPContext = type { i32 }
%struct.m_option = type { i32 }
%union.m_option_value = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"!reverse\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"cycle-values command does not have any value arguments.\0A\00", align 1
@M_PROPERTY_GET_TYPE = common dso_local global i32 0, align 4
@M_PROPERTY_GET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Current value not found. Picking default.\0A\00", align 1
@M_PROPERTY_SET_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmd_cycle_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_cycle_values(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.m_option, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.m_option_value, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.m_option_value, align 4
  store i8* %0, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = bitcast i8* %14 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %15, %struct.mp_cmd_ctx** %3, align 8
  %16 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %16, i32 0, i32 3
  %18 = load %struct.MPContext*, %struct.MPContext** %17, align 8
  store %struct.MPContext* %18, %struct.MPContext** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %19 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %1
  %34 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %45, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %33
  %51 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %52 = call i32 @MP_ERR(%struct.MPContext* %51, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %54 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  br label %181

55:                                               ; preds = %33
  %56 = bitcast %struct.m_option* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %56, i8 0, i64 4, i1 false)
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* @M_PROPERTY_GET_TYPE, align 4
  %59 = bitcast %struct.m_option* %8 to %union.m_option_value*
  %60 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %61 = call i32 @mp_property_do(i8* %57, i32 %58, %union.m_option_value* %59, %struct.MPContext* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @show_property_status(%struct.mp_cmd_ctx* %65, i8* %66, i32 %67)
  br label %181

69:                                               ; preds = %55
  %70 = bitcast %union.m_option_value* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %70, i8 0, i64 4, i1 false)
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* @M_PROPERTY_GET, align 4
  %73 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %74 = call i32 @mp_property_do(i8* %71, i32 %72, %union.m_option_value* %10, %struct.MPContext* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @show_property_status(%struct.mp_cmd_ctx* %78, i8* %79, i32 %80)
  br label %181

82:                                               ; preds = %69
  store i32 -1, i32* %11, align 4
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %124, %82
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %87 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %127

90:                                               ; preds = %84
  %91 = bitcast %union.m_option_value* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %91, i8 0, i64 4, i1 false)
  %92 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %93 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = bitcast %struct.m_option* %8 to %union.m_option_value*
  %96 = load i8*, i8** %7, align 8
  %97 = call i32 @bstr0(i8* %96)
  %98 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %99 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @bstr0(i8* %106)
  %108 = call i64 @m_option_parse(i32 %94, %union.m_option_value* %95, i32 %97, i32 %107, %union.m_option_value* %13)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %90
  br label %124

111:                                              ; preds = %90
  %112 = bitcast %struct.m_option* %8 to %union.m_option_value*
  %113 = call i64 @compare_values(%union.m_option_value* %112, %union.m_option_value* %10, %union.m_option_value* %13)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* %12, align 4
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %115, %111
  %118 = bitcast %struct.m_option* %8 to %union.m_option_value*
  %119 = call i32 @m_option_free(%union.m_option_value* %118, %union.m_option_value* %13)
  %120 = load i32, i32* %11, align 4
  %121 = icmp sge i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %127

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %123, %110
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %12, align 4
  br label %84

127:                                              ; preds = %122, %84
  %128 = bitcast %struct.m_option* %8 to %union.m_option_value*
  %129 = call i32 @m_option_free(%union.m_option_value* %128, %union.m_option_value* %10)
  %130 = load i32, i32* %11, align 4
  %131 = icmp sge i32 %130, 0
  br i1 %131, label %132, label %153

132:                                              ; preds = %127
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %132
  %140 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %141 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sub nsw i32 %142, 1
  store i32 %143, i32* %11, align 4
  br label %144

144:                                              ; preds = %139, %132
  %145 = load i32, i32* %11, align 4
  %146 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %147 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp sge i32 %145, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = load i32, i32* %5, align 4
  store i32 %151, i32* %11, align 4
  br label %152

152:                                              ; preds = %150, %144
  br label %167

153:                                              ; preds = %127
  %154 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %155 = call i32 @MP_VERBOSE(%struct.MPContext* %154, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %156 = load i32, i32* %6, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i32, i32* %5, align 4
  br label %165

160:                                              ; preds = %153
  %161 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %162 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sub nsw i32 %163, 1
  br label %165

165:                                              ; preds = %160, %158
  %166 = phi i32 [ %159, %158 ], [ %164, %160 ]
  store i32 %166, i32* %11, align 4
  br label %167

167:                                              ; preds = %165, %152
  %168 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %169 = load i8*, i8** %7, align 8
  %170 = load i32, i32* @M_PROPERTY_SET_STRING, align 4
  %171 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %172 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %171, i32 0, i32 2
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @change_property_cmd(%struct.mp_cmd_ctx* %168, i8* %169, i32 %170, i8* %179)
  br label %181

181:                                              ; preds = %167, %77, %64, %50
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @MP_ERR(%struct.MPContext*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mp_property_do(i8*, i32, %union.m_option_value*, %struct.MPContext*) #1

declare dso_local i32 @show_property_status(%struct.mp_cmd_ctx*, i8*, i32) #1

declare dso_local i64 @m_option_parse(i32, %union.m_option_value*, i32, i32, %union.m_option_value*) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i64 @compare_values(%union.m_option_value*, %union.m_option_value*, %union.m_option_value*) #1

declare dso_local i32 @m_option_free(%union.m_option_value*, %union.m_option_value*) #1

declare dso_local i32 @MP_VERBOSE(%struct.MPContext*, i8*) #1

declare dso_local i32 @change_property_cmd(%struct.mp_cmd_ctx*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
