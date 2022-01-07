; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_extra_field.c__zip_read_local_ef.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_extra_field.c__zip_read_local_ef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip = type { i64, i32, i32, %struct.zip_entry* }
%struct.zip_entry = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.zip_extra_field = type { i32 }

@ZIP_ER_INVAL = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@ZIP_ER_SEEK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ZIP_ER_READ = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@ZIP_EF_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_zip_read_local_ef(%struct.zip* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.zip_entry*, align 8
  %7 = alloca [4 x i8], align 1
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.zip_extra_field*, align 8
  %12 = alloca i32*, align 8
  store %struct.zip* %0, %struct.zip** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.zip*, %struct.zip** %4, align 8
  %15 = getelementptr inbounds %struct.zip, %struct.zip* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %13, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.zip*, %struct.zip** %4, align 8
  %20 = getelementptr inbounds %struct.zip, %struct.zip* %19, i32 0, i32 1
  %21 = load i32, i32* @ZIP_ER_INVAL, align 4
  %22 = call i32 @_zip_error_set(i32* %20, i32 %21, i32 0)
  store i32 -1, i32* %3, align 4
  br label %163

23:                                               ; preds = %2
  %24 = load %struct.zip*, %struct.zip** %4, align 8
  %25 = getelementptr inbounds %struct.zip, %struct.zip* %24, i32 0, i32 3
  %26 = load %struct.zip_entry*, %struct.zip_entry** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %26, i64 %27
  store %struct.zip_entry* %28, %struct.zip_entry** %6, align 8
  %29 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8
  %30 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = icmp eq %struct.TYPE_3__* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %23
  %34 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8
  %35 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %23
  store i32 0, i32* %3, align 4
  br label %163

41:                                               ; preds = %33
  %42 = load %struct.zip*, %struct.zip** %4, align 8
  %43 = getelementptr inbounds %struct.zip, %struct.zip* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8
  %46 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 26
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @SEEK_SET, align 4
  %53 = call i64 @fseeko(i32 %44, i32 %51, i32 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %41
  %56 = load %struct.zip*, %struct.zip** %4, align 8
  %57 = getelementptr inbounds %struct.zip, %struct.zip* %56, i32 0, i32 1
  %58 = load i32, i32* @ZIP_ER_SEEK, align 4
  %59 = load i32, i32* @errno, align 4
  %60 = call i32 @_zip_error_set(i32* %57, i32 %58, i32 %59)
  store i32 -1, i32* %3, align 4
  br label %163

61:                                               ; preds = %41
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %63 = load %struct.zip*, %struct.zip** %4, align 8
  %64 = getelementptr inbounds %struct.zip, %struct.zip* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @fread(i8* %62, i32 4, i32 1, i32 %65)
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load %struct.zip*, %struct.zip** %4, align 8
  %70 = getelementptr inbounds %struct.zip, %struct.zip* %69, i32 0, i32 1
  %71 = load i32, i32* @ZIP_ER_READ, align 4
  %72 = load i32, i32* @errno, align 4
  %73 = call i32 @_zip_error_set(i32* %70, i32 %71, i32 %72)
  store i32 -1, i32* %3, align 4
  br label %163

74:                                               ; preds = %61
  %75 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  store i8* %75, i8** %8, align 8
  %76 = call i64 @_zip_read2(i8** %8)
  store i64 %76, i64* %9, align 8
  %77 = call i64 @_zip_read2(i8** %8)
  store i64 %77, i64* %10, align 8
  %78 = load i64, i64* %10, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %132

80:                                               ; preds = %74
  %81 = load %struct.zip*, %struct.zip** %4, align 8
  %82 = getelementptr inbounds %struct.zip, %struct.zip* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* %9, align 8
  %85 = load i32, i32* @SEEK_CUR, align 4
  %86 = call i64 @fseek(i32 %83, i64 %84, i32 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %80
  %89 = load %struct.zip*, %struct.zip** %4, align 8
  %90 = getelementptr inbounds %struct.zip, %struct.zip* %89, i32 0, i32 1
  %91 = load i32, i32* @ZIP_ER_SEEK, align 4
  %92 = load i32, i32* @errno, align 4
  %93 = call i32 @_zip_error_set(i32* %90, i32 %91, i32 %92)
  store i32 -1, i32* %3, align 4
  br label %163

94:                                               ; preds = %80
  %95 = load %struct.zip*, %struct.zip** %4, align 8
  %96 = getelementptr inbounds %struct.zip, %struct.zip* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.zip*, %struct.zip** %4, align 8
  %100 = getelementptr inbounds %struct.zip, %struct.zip* %99, i32 0, i32 1
  %101 = call i32* @_zip_read_data(i32* null, i32 %97, i64 %98, i32 0, i32* %100)
  store i32* %101, i32** %12, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  store i32 -1, i32* %3, align 4
  br label %163

105:                                              ; preds = %94
  %106 = load i32*, i32** %12, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load i32, i32* @ZIP_EF_LOCAL, align 4
  %109 = load %struct.zip*, %struct.zip** %4, align 8
  %110 = getelementptr inbounds %struct.zip, %struct.zip* %109, i32 0, i32 1
  %111 = call %struct.zip_extra_field* @_zip_ef_parse(i32* %106, i64 %107, i32 %108, i32* %110)
  store %struct.zip_extra_field* %111, %struct.zip_extra_field** %11, align 8
  %112 = icmp eq %struct.zip_extra_field* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @free(i32* %114)
  store i32 -1, i32* %3, align 4
  br label %163

116:                                              ; preds = %105
  %117 = load i32*, i32** %12, align 8
  %118 = call i32 @free(i32* %117)
  %119 = load %struct.zip_extra_field*, %struct.zip_extra_field** %11, align 8
  %120 = call %struct.zip_extra_field* @_zip_ef_remove_internal(%struct.zip_extra_field* %119)
  store %struct.zip_extra_field* %120, %struct.zip_extra_field** %11, align 8
  %121 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8
  %122 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %121, i32 0, i32 1
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.zip_extra_field*, %struct.zip_extra_field** %11, align 8
  %127 = call i32 @_zip_ef_merge(i32 %125, %struct.zip_extra_field* %126)
  %128 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8
  %129 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %128, i32 0, i32 1
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  store i32 %127, i32* %131, align 4
  br label %132

132:                                              ; preds = %116, %74
  %133 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8
  %134 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %133, i32 0, i32 1
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  %137 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8
  %138 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %137, i32 0, i32 0
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = icmp ne %struct.TYPE_4__* %139, null
  br i1 %140, label %141, label %162

141:                                              ; preds = %132
  %142 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8
  %143 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %162

148:                                              ; preds = %141
  %149 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8
  %150 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %149, i32 0, i32 1
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8
  %155 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %154, i32 0, i32 0
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  store i32 %153, i32* %157, align 4
  %158 = load %struct.zip_entry*, %struct.zip_entry** %6, align 8
  %159 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %158, i32 0, i32 0
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  store i32 1, i32* %161, align 4
  br label %162

162:                                              ; preds = %148, %141, %132
  store i32 0, i32* %3, align 4
  br label %163

163:                                              ; preds = %162, %113, %104, %88, %68, %55, %40, %18
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @_zip_error_set(i32*, i32, i32) #1

declare dso_local i64 @fseeko(i32, i32, i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32) #1

declare dso_local i64 @_zip_read2(i8**) #1

declare dso_local i64 @fseek(i32, i64, i32) #1

declare dso_local i32* @_zip_read_data(i32*, i32, i64, i32, i32*) #1

declare dso_local %struct.zip_extra_field* @_zip_ef_parse(i32*, i64, i32, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local %struct.zip_extra_field* @_zip_ef_remove_internal(%struct.zip_extra_field*) #1

declare dso_local i32 @_zip_ef_merge(i32, %struct.zip_extra_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
