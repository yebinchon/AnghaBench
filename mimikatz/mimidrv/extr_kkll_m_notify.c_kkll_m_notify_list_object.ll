; ModuleID = '/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_notify.c_kkll_m_notify_list_object.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_notify.c_kkll_m_notify_list_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@ObpTypeDirectoryObject = common dso_local global %struct.TYPE_12__** null, align 8
@ObjectReferences = common dso_local global i32 0, align 4
@pObpTypeDirectoryObjectOffsets = common dso_local global %struct.TYPE_11__* null, align 8
@OBJECT_HASH_TABLE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i32] [i32 10, i32 32, i32 42, i32 32, i32 37, i32 119, i32 90, i32 10, i32 0], align 4
@KiwiOsIndex = common dso_local global i64 0, align 8
@KiwiOsIndex_VISTA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i32] [i32 9, i32 37, i32 115, i32 32, i32 45, i32 32, i32 0], align 4
@procCallToName = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kkll_m_notify_list_object(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @ObpTypeDirectoryObject, align 8
  %12 = icmp ne %struct.TYPE_12__** %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ObjectReferences, align 4
  %15 = load i32, i32* @ObjectReferences, align 4
  %16 = call i32 @ARRAYSIZE(i32 %15)
  %17 = call i32 @kkll_m_notify_search(i32 %14, i32 %16, i32* bitcast (%struct.TYPE_12__*** @ObpTypeDirectoryObject to i32*), i32* null, %struct.TYPE_11__** @pObpTypeDirectoryObjectOffsets)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @ObpTypeDirectoryObject, align 8
  %20 = icmp ne %struct.TYPE_12__** %19, null
  br i1 %20, label %21, label %151

21:                                               ; preds = %18
  store i64 0, i64* %7, align 8
  br label %22

22:                                               ; preds = %147, %21
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @NT_SUCCESS(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @OBJECT_HASH_TABLE_SIZE, align 8
  %29 = icmp ult i64 %27, %28
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ false, %22 ], [ %29, %26 ]
  br i1 %31, label %32, label %150

32:                                               ; preds = %30
  %33 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @ObpTypeDirectoryObject, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %36, i64 %37
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %4, align 8
  br label %40

40:                                               ; preds = %142, %32
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @NT_SUCCESS(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = icmp ne %struct.TYPE_9__* %45, null
  br label %47

47:                                               ; preds = %44, %40
  %48 = phi i1 [ false, %40 ], [ %46, %44 ]
  br i1 %48, label %49, label %146

49:                                               ; preds = %47
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %5, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %141

54:                                               ; preds = %49
  %55 = load i32, i32* %2, align 4
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pObpTypeDirectoryObjectOffsets, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = call i32 @kprintf(i32 %55, i8* bitcast ([9 x i32]* @.str to i8*), i64 %60)
  store i32 %61, i32* %3, align 4
  %62 = load i64, i64* @KiwiOsIndex, align 8
  %63 = load i64, i64* @KiwiOsIndex_VISTA, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %99

65:                                               ; preds = %54
  %66 = load i64, i64* %5, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pObpTypeDirectoryObjectOffsets, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = inttoptr i64 %70 to %struct.TYPE_10__**
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %6, align 8
  br label %73

73:                                               ; preds = %92, %65
  %74 = load i32, i32* %3, align 4
  %75 = call i64 @NT_SUCCESS(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = load i64, i64* %5, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pObpTypeDirectoryObjectOffsets, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = inttoptr i64 %83 to %struct.TYPE_10__*
  %85 = icmp ne %struct.TYPE_10__* %78, %84
  br label %86

86:                                               ; preds = %77, %73
  %87 = phi i1 [ false, %73 ], [ %85, %77 ]
  br i1 %87, label %88, label %98

88:                                               ; preds = %86
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = load i32, i32* %2, align 4
  %91 = call i32 @kkll_m_notify_desc_object_callback(%struct.TYPE_10__* %89, i32 %90)
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %97, %struct.TYPE_10__** %6, align 8
  br label %73

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98, %54
  store i64 0, i64* %8, align 8
  br label %100

100:                                              ; preds = %137, %99
  %101 = load i32, i32* %3, align 4
  %102 = call i64 @NT_SUCCESS(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i64, i64* %8, align 8
  %106 = icmp ult i64 %105, 8
  br label %107

107:                                              ; preds = %104, %100
  %108 = phi i1 [ false, %100 ], [ %106, %104 ]
  br i1 %108, label %109, label %140

109:                                              ; preds = %107
  %110 = load i64, i64* %5, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pObpTypeDirectoryObjectOffsets, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  %115 = load i64, i64* %8, align 8
  %116 = mul i64 4, %115
  %117 = add i64 %114, %116
  %118 = inttoptr i64 %117 to i32*
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %109
  %122 = load i32, i32* %2, align 4
  %123 = load i64*, i64** @procCallToName, align 8
  %124 = load i64, i64* %8, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @kprintf(i32 %122, i8* bitcast ([7 x i32]* @.str.1 to i8*), i64 %126)
  store i32 %127, i32* %3, align 4
  %128 = load i32, i32* %3, align 4
  %129 = call i64 @NT_SUCCESS(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %121
  %132 = load i32, i32* %2, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @kkll_m_modules_fromAddr(i32 %132, i32 %133)
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %131, %121
  br label %136

136:                                              ; preds = %135, %109
  br label %137

137:                                              ; preds = %136
  %138 = load i64, i64* %8, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %8, align 8
  br label %100

140:                                              ; preds = %107
  br label %141

141:                                              ; preds = %140, %49
  br label %142

142:                                              ; preds = %141
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  store %struct.TYPE_9__* %145, %struct.TYPE_9__** %4, align 8
  br label %40

146:                                              ; preds = %47
  br label %147

147:                                              ; preds = %146
  %148 = load i64, i64* %7, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %7, align 8
  br label %22

150:                                              ; preds = %30
  br label %151

151:                                              ; preds = %150, %18
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @kkll_m_notify_search(i32, i32, i32*, i32*, %struct.TYPE_11__**) #1

declare dso_local i32 @ARRAYSIZE(i32) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @kprintf(i32, i8*, i64) #1

declare dso_local i32 @kkll_m_notify_desc_object_callback(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @kkll_m_modules_fromAddr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
