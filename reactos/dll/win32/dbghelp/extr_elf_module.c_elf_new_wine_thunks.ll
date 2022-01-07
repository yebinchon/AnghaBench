; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_new_wine_thunks.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_new_wine_thunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i64, i32 }
%struct.hash_table = type { i32 }
%struct.elf_thunk_area = type { i32 }
%struct.hash_table_iter = type { i32 }
%struct.symtab_elt = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.symt_ht = type { i32 }
%struct.location = type { i64, i32, i32 }

@loc_absolute = common dso_local global i32 0, align 4
@STB_LOCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Shouldn't happen\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, %struct.hash_table*, %struct.elf_thunk_area*)* @elf_new_wine_thunks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_new_wine_thunks(%struct.module* %0, %struct.hash_table* %1, %struct.elf_thunk_area* %2) #0 {
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.hash_table*, align 8
  %6 = alloca %struct.elf_thunk_area*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hash_table_iter, align 4
  %9 = alloca %struct.symtab_elt*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.symt_ht*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.location, align 8
  store %struct.module* %0, %struct.module** %4, align 8
  store %struct.hash_table* %1, %struct.hash_table** %5, align 8
  store %struct.elf_thunk_area* %2, %struct.elf_thunk_area** %6, align 8
  %14 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %15 = call i32 @hash_table_iter_init(%struct.hash_table* %14, %struct.hash_table_iter* %8, i32* null)
  br label %16

16:                                               ; preds = %150, %24, %3
  %17 = call %struct.symtab_elt* @hash_table_iter_up(%struct.hash_table_iter* %8)
  store %struct.symtab_elt* %17, %struct.symtab_elt** %9, align 8
  %18 = icmp ne %struct.symtab_elt* %17, null
  br i1 %18, label %19, label %151

19:                                               ; preds = %16
  %20 = load %struct.symtab_elt*, %struct.symtab_elt** %9, align 8
  %21 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %16

25:                                               ; preds = %19
  %26 = load %struct.module*, %struct.module** %4, align 8
  %27 = getelementptr inbounds %struct.module, %struct.module* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.symtab_elt*, %struct.symtab_elt** %9, align 8
  %30 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %28, %33
  store i64 %34, i64* %10, align 8
  %35 = load %struct.symtab_elt*, %struct.symtab_elt** %9, align 8
  %36 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.elf_thunk_area*, %struct.elf_thunk_area** %6, align 8
  %41 = call i32 @elf_is_in_thunk_area(i64 %39, %struct.elf_thunk_area* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %25
  %45 = load %struct.module*, %struct.module** %4, align 8
  %46 = load %struct.symtab_elt*, %struct.symtab_elt** %9, align 8
  %47 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.symtab_elt*, %struct.symtab_elt** %9, align 8
  %50 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.elf_thunk_area*, %struct.elf_thunk_area** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %53, i64 %55
  %57 = getelementptr inbounds %struct.elf_thunk_area, %struct.elf_thunk_area* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.symtab_elt*, %struct.symtab_elt** %9, align 8
  %61 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @symt_new_thunk(%struct.module* %45, i32 %48, i32 %52, i32 %58, i64 %59, i32 %64)
  br label %150

66:                                               ; preds = %25
  %67 = load %struct.module*, %struct.module** %4, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call %struct.symt_ht* @symt_find_nearest(%struct.module* %67, i64 %68)
  store %struct.symt_ht* %69, %struct.symt_ht** %11, align 8
  %70 = load %struct.symt_ht*, %struct.symt_ht** %11, align 8
  %71 = icmp ne %struct.symt_ht* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load %struct.symt_ht*, %struct.symt_ht** %11, align 8
  %74 = getelementptr inbounds %struct.symt_ht, %struct.symt_ht* %73, i32 0, i32 0
  %75 = call i32 @symt_get_address(i32* %74, i64* %12)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = load i64, i64* %10, align 8
  store i64 %78, i64* %12, align 8
  br label %79

79:                                               ; preds = %77, %72, %66
  %80 = load %struct.symt_ht*, %struct.symt_ht** %11, align 8
  %81 = icmp ne %struct.symt_ht* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %12, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %149

86:                                               ; preds = %82, %79
  %87 = load %struct.symtab_elt*, %struct.symtab_elt** %9, align 8
  %88 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ELF32_ST_TYPE(i32 %91)
  switch i32 %92, label %143 [
    i32 129, label %93
    i32 128, label %109
  ]

93:                                               ; preds = %86
  %94 = load %struct.module*, %struct.module** %4, align 8
  %95 = load %struct.symtab_elt*, %struct.symtab_elt** %9, align 8
  %96 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.symtab_elt*, %struct.symtab_elt** %9, align 8
  %99 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load %struct.symtab_elt*, %struct.symtab_elt** %9, align 8
  %104 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @symt_new_function(%struct.module* %94, i32 %97, i32 %101, i64 %102, i32 %107, i32* null)
  br label %145

109:                                              ; preds = %86
  %110 = load i32, i32* @loc_absolute, align 4
  %111 = getelementptr inbounds %struct.location, %struct.location* %13, i32 0, i32 2
  store i32 %110, i32* %111, align 4
  %112 = getelementptr inbounds %struct.location, %struct.location* %13, i32 0, i32 1
  store i32 0, i32* %112, align 8
  %113 = load i64, i64* %10, align 8
  %114 = getelementptr inbounds %struct.location, %struct.location* %13, i32 0, i32 0
  store i64 %113, i64* %114, align 8
  %115 = load %struct.module*, %struct.module** %4, align 8
  %116 = load %struct.symtab_elt*, %struct.symtab_elt** %9, align 8
  %117 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.symtab_elt*, %struct.symtab_elt** %9, align 8
  %120 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.symtab_elt*, %struct.symtab_elt** %9, align 8
  %124 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ELF32_ST_BIND(i32 %127)
  %129 = load i32, i32* @STB_LOCAL, align 4
  %130 = icmp eq i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = load %struct.symtab_elt*, %struct.symtab_elt** %9, align 8
  %133 = getelementptr inbounds %struct.symtab_elt, %struct.symtab_elt* %132, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = bitcast %struct.location* %13 to { i64, i64 }*
  %138 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %137, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @symt_new_global_variable(%struct.module* %115, i32 %118, i32 %122, i32 %131, i64 %139, i64 %141, i32 %136, i32* null)
  br label %145

143:                                              ; preds = %86
  %144 = call i32 @FIXME(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %109, %93
  %146 = load i32, i32* @TRUE, align 4
  %147 = load %struct.module*, %struct.module** %4, align 8
  %148 = getelementptr inbounds %struct.module, %struct.module* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %145, %82
  br label %150

150:                                              ; preds = %149, %44
  br label %16

151:                                              ; preds = %16
  %152 = load i32, i32* @FALSE, align 4
  %153 = load %struct.module*, %struct.module** %4, align 8
  %154 = getelementptr inbounds %struct.module, %struct.module* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* @TRUE, align 4
  ret i32 %155
}

declare dso_local i32 @hash_table_iter_init(%struct.hash_table*, %struct.hash_table_iter*, i32*) #1

declare dso_local %struct.symtab_elt* @hash_table_iter_up(%struct.hash_table_iter*) #1

declare dso_local i32 @elf_is_in_thunk_area(i64, %struct.elf_thunk_area*) #1

declare dso_local i32 @symt_new_thunk(%struct.module*, i32, i32, i32, i64, i32) #1

declare dso_local %struct.symt_ht* @symt_find_nearest(%struct.module*, i64) #1

declare dso_local i32 @symt_get_address(i32*, i64*) #1

declare dso_local i32 @ELF32_ST_TYPE(i32) #1

declare dso_local i32 @symt_new_function(%struct.module*, i32, i32, i64, i32, i32*) #1

declare dso_local i32 @symt_new_global_variable(%struct.module*, i32, i32, i32, i64, i64, i32, i32*) #1

declare dso_local i32 @ELF32_ST_BIND(i32) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
