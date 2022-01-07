; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_file_replace.c__zip_file_replace.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_file_replace.c__zip_file_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.zip_source*, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.zip_source = type { i32 }

@ZIP_ER_RDONLY = common dso_local global i32 0, align 4
@ZIP_UINT64_MAX = common dso_local global i64 0, align 8
@ZIP_FL_OVERWRITE = common dso_local global i32 0, align 4
@ZIP_DIRENT_COMP_METHOD = common dso_local global i32 0, align 4
@ZIP_ER_MEMORY = common dso_local global i32 0, align 4
@ZIP_CM_REPLACED_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_zip_file_replace(%struct.zip* %0, i64 %1, i8* %2, %struct.zip_source* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.zip*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.zip_source*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.zip* %0, %struct.zip** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.zip_source* %3, %struct.zip_source** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.zip*, %struct.zip** %7, align 8
  %15 = call i64 @ZIP_IS_RDONLY(%struct.zip* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load %struct.zip*, %struct.zip** %7, align 8
  %19 = getelementptr inbounds %struct.zip, %struct.zip* %18, i32 0, i32 2
  %20 = load i32, i32* @ZIP_ER_RDONLY, align 4
  %21 = call i32 @_zip_error_set(i32* %19, i32 %20, i32 0)
  store i32 -1, i32* %6, align 4
  br label %177

22:                                               ; preds = %5
  %23 = load %struct.zip*, %struct.zip** %7, align 8
  %24 = getelementptr inbounds %struct.zip, %struct.zip* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @ZIP_UINT64_MAX, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %22
  store i32 -1, i32* %13, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @ZIP_FL_OVERWRITE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.zip*, %struct.zip** %7, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @_zip_name_locate(%struct.zip* %35, i8* %36, i32 %37, i32* null)
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* %13, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.zip*, %struct.zip** %7, align 8
  %44 = call i32 @_zip_add_entry(%struct.zip* %43)
  store i32 %44, i32* %13, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 -1, i32* %6, align 4
  br label %177

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %39
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %8, align 8
  br label %51

51:                                               ; preds = %48, %22
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %78

54:                                               ; preds = %51
  %55 = load %struct.zip*, %struct.zip** %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i64 @_zip_set_name(%struct.zip* %55, i64 %56, i8* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %54
  %62 = load %struct.zip*, %struct.zip** %7, align 8
  %63 = getelementptr inbounds %struct.zip, %struct.zip* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %12, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load %struct.zip*, %struct.zip** %7, align 8
  %69 = getelementptr inbounds %struct.zip, %struct.zip* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %71
  %73 = call i32 @_zip_entry_finalize(%struct.TYPE_4__* %72)
  %74 = load i64, i64* %12, align 8
  %75 = load %struct.zip*, %struct.zip** %7, align 8
  %76 = getelementptr inbounds %struct.zip, %struct.zip* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %67, %61
  store i32 -1, i32* %6, align 4
  br label %177

78:                                               ; preds = %54, %51
  %79 = load %struct.zip*, %struct.zip** %7, align 8
  %80 = getelementptr inbounds %struct.zip, %struct.zip* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %82
  %84 = call i32 @_zip_unchange_data(%struct.TYPE_4__* %83)
  %85 = load %struct.zip*, %struct.zip** %7, align 8
  %86 = getelementptr inbounds %struct.zip, %struct.zip* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %167

93:                                               ; preds = %78
  %94 = load %struct.zip*, %struct.zip** %7, align 8
  %95 = getelementptr inbounds %struct.zip, %struct.zip* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i64, i64* %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = icmp eq %struct.TYPE_5__* %100, null
  br i1 %101, label %115, label %102

102:                                              ; preds = %93
  %103 = load %struct.zip*, %struct.zip** %7, align 8
  %104 = getelementptr inbounds %struct.zip, %struct.zip* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @ZIP_DIRENT_COMP_METHOD, align 4
  %113 = and i32 %111, %112
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %167

115:                                              ; preds = %102, %93
  %116 = load %struct.zip*, %struct.zip** %7, align 8
  %117 = getelementptr inbounds %struct.zip, %struct.zip* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i64, i64* %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = icmp eq %struct.TYPE_5__* %122, null
  br i1 %123, label %124, label %146

124:                                              ; preds = %115
  %125 = load %struct.zip*, %struct.zip** %7, align 8
  %126 = getelementptr inbounds %struct.zip, %struct.zip* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i64, i64* %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = call %struct.TYPE_5__* @_zip_dirent_clone(i32* %131)
  %133 = load %struct.zip*, %struct.zip** %7, align 8
  %134 = getelementptr inbounds %struct.zip, %struct.zip* %133, i32 0, i32 1
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load i64, i64* %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  store %struct.TYPE_5__* %132, %struct.TYPE_5__** %138, align 8
  %139 = icmp eq %struct.TYPE_5__* %132, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %124
  %141 = load %struct.zip*, %struct.zip** %7, align 8
  %142 = getelementptr inbounds %struct.zip, %struct.zip* %141, i32 0, i32 2
  %143 = load i32, i32* @ZIP_ER_MEMORY, align 4
  %144 = call i32 @_zip_error_set(i32* %142, i32 %143, i32 0)
  store i32 -1, i32* %6, align 4
  br label %177

145:                                              ; preds = %124
  br label %146

146:                                              ; preds = %145, %115
  %147 = load i32, i32* @ZIP_CM_REPLACED_DEFAULT, align 4
  %148 = load %struct.zip*, %struct.zip** %7, align 8
  %149 = getelementptr inbounds %struct.zip, %struct.zip* %148, i32 0, i32 1
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i64, i64* %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  store i32 %147, i32* %155, align 4
  %156 = load i32, i32* @ZIP_DIRENT_COMP_METHOD, align 4
  %157 = load %struct.zip*, %struct.zip** %7, align 8
  %158 = getelementptr inbounds %struct.zip, %struct.zip* %157, i32 0, i32 1
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = load i64, i64* %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %156
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %146, %102, %78
  %168 = load %struct.zip_source*, %struct.zip_source** %10, align 8
  %169 = load %struct.zip*, %struct.zip** %7, align 8
  %170 = getelementptr inbounds %struct.zip, %struct.zip* %169, i32 0, i32 1
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = load i64, i64* %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  store %struct.zip_source* %168, %struct.zip_source** %174, align 8
  %175 = load i64, i64* %8, align 8
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %6, align 4
  br label %177

177:                                              ; preds = %167, %140, %77, %46, %17
  %178 = load i32, i32* %6, align 4
  ret i32 %178
}

declare dso_local i64 @ZIP_IS_RDONLY(%struct.zip*) #1

declare dso_local i32 @_zip_error_set(i32*, i32, i32) #1

declare dso_local i32 @_zip_name_locate(%struct.zip*, i8*, i32, i32*) #1

declare dso_local i32 @_zip_add_entry(%struct.zip*) #1

declare dso_local i64 @_zip_set_name(%struct.zip*, i64, i8*, i32) #1

declare dso_local i32 @_zip_entry_finalize(%struct.TYPE_4__*) #1

declare dso_local i32 @_zip_unchange_data(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_5__* @_zip_dirent_clone(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
