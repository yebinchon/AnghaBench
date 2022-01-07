; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/user/extr_user_main.c_first_time_setup.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/user/extr_user_main.c_first_time_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@IROM0_SIZE = common dso_local global i32 0, align 4
@INTERNAL_FLASH_SECTOR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Partition %u invalid alignment\0A\00", align 1
@PLATFORM_RCR_PT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32)* @first_time_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @first_time_setup(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %11, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %176, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %179

18:                                               ; preds = %14
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %12, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %109 [
    i32 130, label %26
    i32 129, label %38
    i32 128, label %55
  ]

26:                                               ; preds = %18
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* @IROM0_SIZE, align 4
  %33 = call i8* @PT_ALIGN(i32 %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %26
  br label %109

38:                                               ; preds = %18
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @PT_ALIGN(i32 %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %38
  br label %109

55:                                               ; preds = %18
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %69, %70
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %108

74:                                               ; preds = %60, %55
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %80, %83
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %107

87:                                               ; preds = %74
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %87
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %7, align 4
  %97 = sub nsw i32 %96, 1048576
  %98 = icmp sle i32 %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %102

100:                                              ; preds = %92
  %101 = load i32, i32* %10, align 4
  br label %102

102:                                              ; preds = %100, %99
  %103 = phi i32 [ 1048576, %99 ], [ %101, %100 ]
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %102, %87
  br label %107

107:                                              ; preds = %106, %79
  br label %108

108:                                              ; preds = %107, %65
  br label %109

109:                                              ; preds = %108, %18, %54, %37
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %11, align 4
  br label %175

117:                                              ; preds = %109
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @INTERNAL_FLASH_SECTOR_SIZE, align 4
  %122 = sub nsw i32 %121, 1
  %123 = and i32 %120, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %149, label %125

125:                                              ; preds = %117
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @INTERNAL_FLASH_SECTOR_SIZE, align 4
  %130 = sub nsw i32 %129, 1
  %131 = and i32 %128, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %149, label %133

133:                                              ; preds = %125
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %149, label %139

139:                                              ; preds = %133
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %142, %145
  %147 = load i32, i32* %7, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %139, %133, %125, %117
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @os_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %149, %152
  br label %152

153:                                              ; preds = %139
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %165

157:                                              ; preds = %153
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 %160
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %163 = bitcast %struct.TYPE_4__* %161 to i8*
  %164 = bitcast %struct.TYPE_4__* %162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %163, i8* align 4 %164, i64 12, i1 false)
  br label %165

165:                                              ; preds = %157, %153
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %9, align 4
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %170, %173
  store i32 %174, i32* %10, align 4
  br label %175

175:                                              ; preds = %165, %114
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %8, align 4
  br label %14

179:                                              ; preds = %14
  %180 = load i32, i32* @PLATFORM_RCR_PT, align 4
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = mul i64 %183, 12
  %185 = trunc i64 %184 to i32
  %186 = call i32 @platform_rcr_write(i32 %180, %struct.TYPE_4__* %181, i32 %185)
  %187 = call i32 @ets_delay_us(i32 5000)
  %188 = call i32 (...) @_ResetHandler()
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i8* @PT_ALIGN(i32) #1

declare dso_local i32 @os_printf(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @platform_rcr_write(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @ets_delay_us(i32) #1

declare dso_local i32 @_ResetHandler(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
