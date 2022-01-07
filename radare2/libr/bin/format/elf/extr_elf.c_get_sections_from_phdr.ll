; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/elf/extr_elf.c_get_sections_from_phdr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/elf/extr_elf.c_get_sections_from_phdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_11__, i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c".rel.dyn\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c".rela.plt\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c".rel.plt\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c".got.plt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_15__*)* @get_sections_from_phdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @get_sections_from_phdr(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = icmp ne %struct.TYPE_15__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %16, %1
  %22 = phi i1 [ false, %1 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @r_return_val_if_fail(i32 %23, i32* null)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = icmp ne %struct.TYPE_13__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30, %21
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %169

36:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %132, %36
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %135

43:                                               ; preds = %37
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %130 [
    i32 131, label %52
    i32 130, label %64
    i32 128, label %76
    i32 129, label %86
    i32 133, label %96
    i32 132, label %108
    i32 134, label %118
  ]

52:                                               ; preds = %43
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %131

64:                                               ; preds = %43
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %131

76:                                               ; preds = %43
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %11, align 4
  br label %131

86:                                               ; preds = %43
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %12, align 4
  br label %131

96:                                               ; preds = %43
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %131

108:                                              ; preds = %43
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %13, align 4
  br label %131

118:                                              ; preds = %43
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %131

130:                                              ; preds = %43
  br label %131

131:                                              ; preds = %130, %118, %108, %96, %86, %76, %64, %52
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %37

135:                                              ; preds = %37
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  %138 = call %struct.TYPE_14__* @calloc(i32 %137, i32 4)
  store %struct.TYPE_14__* %138, %struct.TYPE_14__** %4, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %140 = icmp ne %struct.TYPE_14__* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %135
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %169

142:                                              ; preds = %135
  store i32 0, i32* %5, align 4
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @create_section_from_phdr(%struct.TYPE_15__* %143, %struct.TYPE_14__* %144, i32* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %145, i32 %146)
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @create_section_from_phdr(%struct.TYPE_15__* %148, %struct.TYPE_14__* %149, i32* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %150, i32 %151)
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @create_section_from_phdr(%struct.TYPE_15__* %153, %struct.TYPE_14__* %154, i32* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %155, i32 %156)
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @create_section_from_phdr(%struct.TYPE_15__* %158, %struct.TYPE_14__* %159, i32* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %160, i32 %161)
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  store i32 1, i32* %167, align 4
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %168, %struct.TYPE_14__** %2, align 8
  br label %169

169:                                              ; preds = %142, %141, %35
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  ret %struct.TYPE_14__* %170
}

declare dso_local i32 @r_return_val_if_fail(i32, i32*) #1

declare dso_local %struct.TYPE_14__* @calloc(i32, i32) #1

declare dso_local i32 @create_section_from_phdr(%struct.TYPE_15__*, %struct.TYPE_14__*, i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
