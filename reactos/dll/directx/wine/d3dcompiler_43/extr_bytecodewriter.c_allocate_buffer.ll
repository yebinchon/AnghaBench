; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_allocate_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_allocate_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bytecode_buffer = type { i32, i32, i8* }

@BYTECODEBUFFER_INITIAL_SIZE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bytecode_buffer* ()* @allocate_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bytecode_buffer* @allocate_buffer() #0 {
  %1 = alloca %struct.bytecode_buffer*, align 8
  %2 = alloca %struct.bytecode_buffer*, align 8
  %3 = call i8* @d3dcompiler_alloc(i32 16)
  %4 = bitcast i8* %3 to %struct.bytecode_buffer*
  store %struct.bytecode_buffer* %4, %struct.bytecode_buffer** %2, align 8
  %5 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %2, align 8
  %6 = icmp ne %struct.bytecode_buffer* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.bytecode_buffer* null, %struct.bytecode_buffer** %1, align 8
  br label %33

8:                                                ; preds = %0
  %9 = load i32, i32* @BYTECODEBUFFER_INITIAL_SIZE, align 4
  %10 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %2, align 8
  %11 = getelementptr inbounds %struct.bytecode_buffer, %struct.bytecode_buffer* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %2, align 8
  %13 = getelementptr inbounds %struct.bytecode_buffer, %struct.bytecode_buffer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = trunc i64 %16 to i32
  %18 = call i8* @d3dcompiler_alloc(i32 %17)
  %19 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %2, align 8
  %20 = getelementptr inbounds %struct.bytecode_buffer, %struct.bytecode_buffer* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %2, align 8
  %22 = getelementptr inbounds %struct.bytecode_buffer, %struct.bytecode_buffer* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %8
  %26 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %2, align 8
  %27 = call i32 @d3dcompiler_free(%struct.bytecode_buffer* %26)
  store %struct.bytecode_buffer* null, %struct.bytecode_buffer** %1, align 8
  br label %33

28:                                               ; preds = %8
  %29 = load i32, i32* @S_OK, align 4
  %30 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %2, align 8
  %31 = getelementptr inbounds %struct.bytecode_buffer, %struct.bytecode_buffer* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %2, align 8
  store %struct.bytecode_buffer* %32, %struct.bytecode_buffer** %1, align 8
  br label %33

33:                                               ; preds = %28, %25, %7
  %34 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %1, align 8
  ret %struct.bytecode_buffer* %34
}

declare dso_local i8* @d3dcompiler_alloc(i32) #1

declare dso_local i32 @d3dcompiler_free(%struct.bytecode_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
