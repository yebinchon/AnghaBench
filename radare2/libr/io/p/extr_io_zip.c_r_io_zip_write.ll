; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_zip.c_r_io_zip_write.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_zip.c_r_io_zip_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@R_PERM_W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, i32*, i32)* @r_io_zip_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_io_zip_write(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %13 = icmp ne %struct.TYPE_9__* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %14, %4
  store i32 -1, i32* %5, align 4
  br label %82

23:                                               ; preds = %19
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %10, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @R_PERM_W, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  store i32 -1, i32* %5, align 4
  br label %82

34:                                               ; preds = %23
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @r_buf_tell(i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @r_buf_size(i32 %44)
  %46 = icmp sge i64 %41, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %34
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @r_io_zip_realloc_buf(%struct.TYPE_8__* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %34
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @r_buf_size(i32 %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @r_buf_size(i32 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %60, %51
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @r_buf_write_at(i32 %72, i64 %75, i32* %76, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %80 = call i32 @r_io_zip_flush_file(%struct.TYPE_8__* %79)
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %67, %33, %22
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i64 @r_buf_tell(i32) #1

declare dso_local i64 @r_buf_size(i32) #1

declare dso_local i32 @r_io_zip_realloc_buf(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @r_buf_write_at(i32, i64, i32*, i32) #1

declare dso_local i32 @r_io_zip_flush_file(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
