; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_map_section.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_map_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_section_map = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.elf_file_map }
%struct.elf_file_map = type { i8*, %struct.TYPE_10__*, i32, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i64 }

@_SC_PAGESIZE = common dso_local global i32 0, align 4
@DMT_ELF = common dso_local global i64 0, align 8
@SHT_NOBITS = common dso_local global i64 0, align 8
@IMAGE_NO_MAP = common dso_local global i8* null, align 8
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @elf_map_section(%struct.image_section_map* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.image_section_map*, align 8
  %4 = alloca %struct.elf_file_map*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.image_section_map* %0, %struct.image_section_map** %3, align 8
  %8 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %9 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store %struct.elf_file_map* %12, %struct.elf_file_map** %4, align 8
  %13 = load i32, i32* @_SC_PAGESIZE, align 4
  %14 = call i64 @sysconf(i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %16 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DMT_ELF, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %25 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %26, 0
  br i1 %27, label %54, label %28

28:                                               ; preds = %1
  %29 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %30 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %33 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp uge i64 %31, %39
  br i1 %40, label %54, label %41

41:                                               ; preds = %28
  %42 = load %struct.elf_file_map*, %struct.elf_file_map** %4, align 8
  %43 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %46 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SHT_NOBITS, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %41, %28, %1
  %55 = load i8*, i8** @IMAGE_NO_MAP, align 8
  store i8* %55, i8** %2, align 8
  br label %174

56:                                               ; preds = %41
  %57 = load %struct.elf_file_map*, %struct.elf_file_map** %4, align 8
  %58 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %56
  %62 = load %struct.elf_file_map*, %struct.elf_file_map** %4, align 8
  %63 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.elf_file_map*, %struct.elf_file_map** %4, align 8
  %66 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %65, i32 0, i32 1
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %69 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i8, i8* %64, i64 %74
  store i8* %75, i8** %2, align 8
  br label %174

76:                                               ; preds = %56
  %77 = load %struct.elf_file_map*, %struct.elf_file_map** %4, align 8
  %78 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %77, i32 0, i32 1
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %81 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = sub i64 %87, 1
  %89 = xor i64 %88, -1
  %90 = and i64 %86, %89
  store i64 %90, i64* %5, align 8
  %91 = load %struct.elf_file_map*, %struct.elf_file_map** %4, align 8
  %92 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %91, i32 0, i32 1
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %95 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.elf_file_map*, %struct.elf_file_map** %4, align 8
  %102 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %101, i32 0, i32 1
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %105 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %100, %110
  %112 = load i64, i64* %7, align 8
  %113 = add i64 %111, %112
  %114 = sub i64 %113, 1
  %115 = load i64, i64* %7, align 8
  %116 = sub i64 %115, 1
  %117 = xor i64 %116, -1
  %118 = and i64 %114, %117
  %119 = load i64, i64* %5, align 8
  %120 = sub i64 %118, %119
  store i64 %120, i64* %6, align 8
  %121 = load i64, i64* %6, align 8
  %122 = load i32, i32* @PROT_READ, align 4
  %123 = load i32, i32* @MAP_PRIVATE, align 4
  %124 = load %struct.elf_file_map*, %struct.elf_file_map** %4, align 8
  %125 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i64, i64* %5, align 8
  %128 = call i8* @mmap(i32* null, i64 %121, i32 %122, i32 %123, i32 %126, i64 %127)
  %129 = load %struct.elf_file_map*, %struct.elf_file_map** %4, align 8
  %130 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %129, i32 0, i32 1
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %133 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  store i8* %128, i8** %136, align 8
  %137 = load %struct.elf_file_map*, %struct.elf_file_map** %4, align 8
  %138 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %137, i32 0, i32 1
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %141 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load i8*, i8** @IMAGE_NO_MAP, align 8
  %147 = icmp eq i8* %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %76
  %149 = load i8*, i8** @IMAGE_NO_MAP, align 8
  store i8* %149, i8** %2, align 8
  br label %174

150:                                              ; preds = %76
  %151 = load %struct.elf_file_map*, %struct.elf_file_map** %4, align 8
  %152 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %151, i32 0, i32 1
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %155 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.elf_file_map*, %struct.elf_file_map** %4, align 8
  %161 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %160, i32 0, i32 1
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %164 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %7, align 8
  %171 = sub i64 %170, 1
  %172 = and i64 %169, %171
  %173 = getelementptr inbounds i8, i8* %159, i64 %172
  store i8* %173, i8** %2, align 8
  br label %174

174:                                              ; preds = %150, %148, %61, %54
  %175 = load i8*, i8** %2, align 8
  ret i8* %175
}

declare dso_local i64 @sysconf(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
