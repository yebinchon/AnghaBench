; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitExecAllocator.c_sljit_malloc_exec.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitExecAllocator.c_sljit_malloc_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.free_block = type { i32, i32, %struct.TYPE_2__, %struct.free_block* }
%struct.TYPE_2__ = type { i32 }
%struct.block_header = type { i32, i32, %struct.TYPE_2__, %struct.block_header* }

@free_blocks = common dso_local global %struct.free_block* null, align 8
@allocated_size = common dso_local global i32 0, align 4
@CHUNK_SIZE = common dso_local global i32 0, align 4
@CHUNK_MASK = common dso_local global i32 0, align 4
@total_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sljit_malloc_exec(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_header*, align 8
  %5 = alloca %struct.block_header*, align 8
  %6 = alloca %struct.free_block*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call i32 (...) @allocator_grab_lock()
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 40
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 40, i32* %3, align 4
  br label %13

13:                                               ; preds = %12, %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ALIGN_SIZE(i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.free_block*, %struct.free_block** @free_blocks, align 8
  store %struct.free_block* %16, %struct.free_block** %6, align 8
  br label %17

17:                                               ; preds = %71, %13
  %18 = load %struct.free_block*, %struct.free_block** %6, align 8
  %19 = icmp ne %struct.free_block* %18, null
  br i1 %19, label %20, label %75

20:                                               ; preds = %17
  %21 = load %struct.free_block*, %struct.free_block** %6, align 8
  %22 = getelementptr inbounds %struct.free_block, %struct.free_block* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %71

26:                                               ; preds = %20
  %27 = load %struct.free_block*, %struct.free_block** %6, align 8
  %28 = getelementptr inbounds %struct.free_block, %struct.free_block* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 64
  %33 = icmp sgt i32 %30, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %26
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.free_block*, %struct.free_block** %6, align 8
  %40 = getelementptr inbounds %struct.free_block, %struct.free_block* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.free_block*, %struct.free_block** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call %struct.free_block* @AS_BLOCK_HEADER(%struct.free_block* %41, i32 %42)
  %44 = bitcast %struct.free_block* %43 to %struct.block_header*
  store %struct.block_header* %44, %struct.block_header** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.block_header*, %struct.block_header** %4, align 8
  %47 = getelementptr inbounds %struct.block_header, %struct.block_header* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.block_header*, %struct.block_header** %4, align 8
  %50 = bitcast %struct.block_header* %49 to %struct.free_block*
  %51 = load i32, i32* %3, align 4
  %52 = call %struct.free_block* @AS_BLOCK_HEADER(%struct.free_block* %50, i32 %51)
  %53 = getelementptr inbounds %struct.free_block, %struct.free_block* %52, i32 0, i32 1
  store i32 %48, i32* %53, align 4
  br label %60

54:                                               ; preds = %26
  %55 = load %struct.free_block*, %struct.free_block** %6, align 8
  %56 = call i32 @sljit_remove_free_block(%struct.free_block* %55)
  %57 = load %struct.free_block*, %struct.free_block** %6, align 8
  %58 = bitcast %struct.free_block* %57 to %struct.block_header*
  store %struct.block_header* %58, %struct.block_header** %4, align 8
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %34
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @allocated_size, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* @allocated_size, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.block_header*, %struct.block_header** %4, align 8
  %66 = getelementptr inbounds %struct.block_header, %struct.block_header* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = call i32 (...) @allocator_release_lock()
  %68 = load %struct.block_header*, %struct.block_header** %4, align 8
  %69 = bitcast %struct.block_header* %68 to %struct.free_block*
  %70 = call i8* @MEM_START(%struct.free_block* %69)
  store i8* %70, i8** %2, align 8
  br label %155

71:                                               ; preds = %20
  %72 = load %struct.free_block*, %struct.free_block** %6, align 8
  %73 = getelementptr inbounds %struct.free_block, %struct.free_block* %72, i32 0, i32 3
  %74 = load %struct.free_block*, %struct.free_block** %73, align 8
  store %struct.free_block* %74, %struct.free_block** %6, align 8
  br label %17

75:                                               ; preds = %17
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = add i64 %77, 24
  %79 = load i32, i32* @CHUNK_SIZE, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %78, %80
  %82 = sub i64 %81, 1
  %83 = load i32, i32* @CHUNK_MASK, align 4
  %84 = sext i32 %83 to i64
  %85 = and i64 %82, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i64 @alloc_chunk(i32 %87)
  %89 = inttoptr i64 %88 to %struct.block_header*
  store %struct.block_header* %89, %struct.block_header** %4, align 8
  %90 = load %struct.block_header*, %struct.block_header** %4, align 8
  %91 = icmp ne %struct.block_header* %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %75
  %93 = call i32 (...) @allocator_release_lock()
  store i8* null, i8** %2, align 8
  br label %155

94:                                               ; preds = %75
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = sub i64 %96, 24
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @total_size, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* @total_size, align 4
  %102 = load %struct.block_header*, %struct.block_header** %4, align 8
  %103 = getelementptr inbounds %struct.block_header, %struct.block_header* %102, i32 0, i32 1
  store i32 0, i32* %103, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, 64
  %107 = icmp sgt i32 %104, %106
  br i1 %107, label %108, label %133

108:                                              ; preds = %94
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @allocated_size, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* @allocated_size, align 4
  %112 = load i32, i32* %3, align 4
  %113 = load %struct.block_header*, %struct.block_header** %4, align 8
  %114 = getelementptr inbounds %struct.block_header, %struct.block_header* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* %7, align 4
  %117 = sub nsw i32 %116, %115
  store i32 %117, i32* %7, align 4
  %118 = load %struct.block_header*, %struct.block_header** %4, align 8
  %119 = bitcast %struct.block_header* %118 to %struct.free_block*
  %120 = load i32, i32* %3, align 4
  %121 = call %struct.free_block* @AS_FREE_BLOCK(%struct.free_block* %119, i32 %120)
  store %struct.free_block* %121, %struct.free_block** %6, align 8
  %122 = load i32, i32* %3, align 4
  %123 = load %struct.free_block*, %struct.free_block** %6, align 8
  %124 = getelementptr inbounds %struct.free_block, %struct.free_block* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  %126 = load %struct.free_block*, %struct.free_block** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @sljit_insert_free_block(%struct.free_block* %126, i32 %127)
  %129 = load %struct.free_block*, %struct.free_block** %6, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call %struct.free_block* @AS_BLOCK_HEADER(%struct.free_block* %129, i32 %130)
  %132 = bitcast %struct.free_block* %131 to %struct.block_header*
  store %struct.block_header* %132, %struct.block_header** %5, align 8
  br label %145

133:                                              ; preds = %94
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @allocated_size, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* @allocated_size, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.block_header*, %struct.block_header** %4, align 8
  %139 = getelementptr inbounds %struct.block_header, %struct.block_header* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.block_header*, %struct.block_header** %4, align 8
  %141 = bitcast %struct.block_header* %140 to %struct.free_block*
  %142 = load i32, i32* %7, align 4
  %143 = call %struct.free_block* @AS_BLOCK_HEADER(%struct.free_block* %141, i32 %142)
  %144 = bitcast %struct.free_block* %143 to %struct.block_header*
  store %struct.block_header* %144, %struct.block_header** %5, align 8
  br label %145

145:                                              ; preds = %133, %108
  %146 = load %struct.block_header*, %struct.block_header** %5, align 8
  %147 = getelementptr inbounds %struct.block_header, %struct.block_header* %146, i32 0, i32 0
  store i32 1, i32* %147, align 8
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.block_header*, %struct.block_header** %5, align 8
  %150 = getelementptr inbounds %struct.block_header, %struct.block_header* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = call i32 (...) @allocator_release_lock()
  %152 = load %struct.block_header*, %struct.block_header** %4, align 8
  %153 = bitcast %struct.block_header* %152 to %struct.free_block*
  %154 = call i8* @MEM_START(%struct.free_block* %153)
  store i8* %154, i8** %2, align 8
  br label %155

155:                                              ; preds = %145, %92, %60
  %156 = load i8*, i8** %2, align 8
  ret i8* %156
}

declare dso_local i32 @allocator_grab_lock(...) #1

declare dso_local i32 @ALIGN_SIZE(i32) #1

declare dso_local %struct.free_block* @AS_BLOCK_HEADER(%struct.free_block*, i32) #1

declare dso_local i32 @sljit_remove_free_block(%struct.free_block*) #1

declare dso_local i32 @allocator_release_lock(...) #1

declare dso_local i8* @MEM_START(%struct.free_block*) #1

declare dso_local i64 @alloc_chunk(i32) #1

declare dso_local %struct.free_block* @AS_FREE_BLOCK(%struct.free_block*, i32) #1

declare dso_local i32 @sljit_insert_free_block(%struct.free_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
