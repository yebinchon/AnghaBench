; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_retrieveStoreModes.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_retrieveStoreModes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GL_UNPACK_ALIGNMENT = common dso_local global i32 0, align 4
@GL_UNPACK_ROW_LENGTH = common dso_local global i32 0, align 4
@GL_UNPACK_SKIP_ROWS = common dso_local global i32 0, align 4
@GL_UNPACK_SKIP_PIXELS = common dso_local global i32 0, align 4
@GL_UNPACK_LSB_FIRST = common dso_local global i32 0, align 4
@GL_UNPACK_SWAP_BYTES = common dso_local global i32 0, align 4
@GL_PACK_ALIGNMENT = common dso_local global i32 0, align 4
@GL_PACK_ROW_LENGTH = common dso_local global i32 0, align 4
@GL_PACK_SKIP_ROWS = common dso_local global i32 0, align 4
@GL_PACK_SKIP_PIXELS = common dso_local global i32 0, align 4
@GL_PACK_LSB_FIRST = common dso_local global i32 0, align 4
@GL_PACK_SWAP_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @retrieveStoreModes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retrieveStoreModes(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i32, i32* @GL_UNPACK_ALIGNMENT, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 11
  %6 = call i32 @glGetIntegerv(i32 %3, i32* %5)
  %7 = load i32, i32* @GL_UNPACK_ROW_LENGTH, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 10
  %10 = call i32 @glGetIntegerv(i32 %7, i32* %9)
  %11 = load i32, i32* @GL_UNPACK_SKIP_ROWS, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 9
  %14 = call i32 @glGetIntegerv(i32 %11, i32* %13)
  %15 = load i32, i32* @GL_UNPACK_SKIP_PIXELS, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 8
  %18 = call i32 @glGetIntegerv(i32 %15, i32* %17)
  %19 = load i32, i32* @GL_UNPACK_LSB_FIRST, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 7
  %22 = call i32 @glGetIntegerv(i32 %19, i32* %21)
  %23 = load i32, i32* @GL_UNPACK_SWAP_BYTES, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 6
  %26 = call i32 @glGetIntegerv(i32 %23, i32* %25)
  %27 = load i32, i32* @GL_PACK_ALIGNMENT, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  %30 = call i32 @glGetIntegerv(i32 %27, i32* %29)
  %31 = load i32, i32* @GL_PACK_ROW_LENGTH, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  %34 = call i32 @glGetIntegerv(i32 %31, i32* %33)
  %35 = load i32, i32* @GL_PACK_SKIP_ROWS, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = call i32 @glGetIntegerv(i32 %35, i32* %37)
  %39 = load i32, i32* @GL_PACK_SKIP_PIXELS, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = call i32 @glGetIntegerv(i32 %39, i32* %41)
  %43 = load i32, i32* @GL_PACK_LSB_FIRST, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = call i32 @glGetIntegerv(i32 %43, i32* %45)
  %47 = load i32, i32* @GL_PACK_SWAP_BYTES, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @glGetIntegerv(i32 %47, i32* %49)
  ret void
}

declare dso_local i32 @glGetIntegerv(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
