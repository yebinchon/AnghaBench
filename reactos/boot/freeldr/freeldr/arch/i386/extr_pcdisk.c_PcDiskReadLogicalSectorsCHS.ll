; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_pcdisk.c_PcDiskReadLogicalSectorsCHS.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_pcdisk.c_PcDiskReadLogicalSectorsCHS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i64 }

@.str = private unnamed_addr constant [31 x i8] c"PcDiskReadLogicalSectorsCHS()\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Disk read exceeds drive geometry limits.\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Disk Read Failed in CHS mode, after retrying 3 times\00", align 1
@.str.3 = private unnamed_addr constant [119 x i8] c"Disk Read Failed in CHS mode, after retrying 3 times: %x (%s) (DriveNumber: 0x%x SectorNumber: %I64d SectorCount: %d)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64)* @PcDiskReadLogicalSectorsCHS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PcDiskReadLogicalSectorsCHS(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__, align 8
  %16 = alloca %struct.TYPE_11__, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @PcDiskGetDriveGeometry(i32 %19, %struct.TYPE_12__* %13)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %22, %4
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %5, align 4
  br label %203

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %186, %32
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %201

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = srem i32 %37, %39
  %41 = add nsw i32 1, %40
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %7, align 4
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %42, %44
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = srem i32 %45, %47
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %7, align 4
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %49, %51
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %52, %54
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %75

58:                                               ; preds = %36
  %59 = load i32, i32* %8, align 4
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %10, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sub nsw i32 %61, %63
  %65 = icmp sge i32 %59, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sub nsw i32 %68, %70
  store i32 %71, i32* %14, align 4
  br label %74

72:                                               ; preds = %58
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %72, %66
  br label %86

75:                                               ; preds = %36
  %76 = load i32, i32* %8, align 4
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp sge i32 %76, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %14, align 4
  br label %85

83:                                               ; preds = %75
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %83, %80
  br label %86

86:                                               ; preds = %85, %74
  %87 = load i32, i32* %11, align 4
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sge i32 %87, %89
  br i1 %90, label %109, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %12, align 4
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp sge i32 %92, %94
  br i1 %95, label %109, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %97, %98
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  %103 = icmp sgt i32 %99, %102
  br i1 %103, label %109, label %104

104:                                              ; preds = %96
  %105 = load i32, i32* %10, align 4
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %105, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %104, %96, %91, %86
  %110 = call i32 @DiskError(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %111 = load i32, i32* @FALSE, align 4
  store i32 %111, i32* %5, align 4
  br label %203

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  store i32 2, i32* %114, align 8
  %115 = load i32, i32* %14, align 4
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %12, align 4
  %119 = and i32 %118, 255
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %12, align 4
  %124 = and i32 %123, 768
  %125 = ashr i32 %124, 2
  %126 = add nsw i32 %122, %125
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %11, align 4
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* %6, align 4
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 4
  %135 = load i64, i64* %9, align 8
  %136 = trunc i64 %135 to i32
  %137 = ashr i32 %136, 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  %141 = load i64, i64* %9, align 8
  %142 = trunc i64 %141 to i32
  %143 = and i32 %142, 15
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  store i32 0, i32* %17, align 4
  br label %146

146:                                              ; preds = %163, %112
  %147 = load i32, i32* %17, align 4
  %148 = icmp slt i32 %147, 3
  br i1 %148, label %149, label %166

149:                                              ; preds = %146
  %150 = call i32 @Int386(i32 19, %struct.TYPE_11__* %15, %struct.TYPE_11__* %16)
  %151 = call i64 @INT386_SUCCESS(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %16)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  br label %166

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 17
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %166

160:                                              ; preds = %154
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @DiskResetController(i32 %161)
  br label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %17, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %17, align 4
  br label %146

166:                                              ; preds = %159, %153, %146
  %167 = load i32, i32* %17, align 4
  %168 = icmp sge i32 %167, 3
  br i1 %168, label %169, label %186

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @DiskError(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %172)
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @DiskGetErrorCodeString(i32 %179)
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @ERR(i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.3, i64 0, i64 0), i32 %176, i32 %180, i32 %181, i32 %182, i32 %183)
  %185 = load i32, i32* @FALSE, align 4
  store i32 %185, i32* %5, align 4
  br label %203

186:                                              ; preds = %166
  %187 = load i64, i64* %9, align 8
  %188 = trunc i64 %187 to i32
  %189 = load i32, i32* %14, align 4
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = mul nsw i32 %189, %191
  %193 = add nsw i32 %188, %192
  %194 = sext i32 %193 to i64
  store i64 %194, i64* %9, align 8
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* %8, align 4
  %197 = sub nsw i32 %196, %195
  store i32 %197, i32* %8, align 4
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %7, align 4
  br label %33

201:                                              ; preds = %33
  %202 = load i32, i32* @TRUE, align 4
  store i32 %202, i32* %5, align 4
  br label %203

203:                                              ; preds = %201, %169, %109, %30
  %204 = load i32, i32* %5, align 4
  ret i32 %204
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @PcDiskGetDriveGeometry(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @DiskError(i8*, i32) #1

declare dso_local i32 @Int386(i32, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i64 @INT386_SUCCESS(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8) #1

declare dso_local i32 @DiskResetController(i32) #1

declare dso_local i32 @ERR(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DiskGetErrorCodeString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
