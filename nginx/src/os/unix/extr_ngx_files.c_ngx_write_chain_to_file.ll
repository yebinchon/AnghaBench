; ModuleID = '/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_files.c_ngx_write_chain_to_file.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_files.c_ngx_write_chain_to_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32*, i32* }
%struct.TYPE_10__ = type { i32, i32, %struct.iovec* }
%struct.iovec = type { i64, i64 }

@NGX_IOVS_PREALLOCATE = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_write_chain_to_file(i32* %0, %struct.TYPE_11__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* @NGX_IOVS_PREALLOCATE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca %struct.iovec, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = ptrtoint i32* %35 to i64
  %42 = ptrtoint i32* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 4
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @ngx_write_file(i32* %25, i32* %30, i64 %44, i32 %45)
  store i64 %46, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %100

47:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  store %struct.iovec* %19, %struct.iovec** %48, align 8
  %49 = load i32, i32* @NGX_IOVS_PREALLOCATE, align 4
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i32 %49, i32* %50, align 8
  br label %51

51:                                               ; preds = %95, %47
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %53 = call %struct.TYPE_11__* @ngx_chain_to_iovec(%struct.TYPE_10__* %12, %struct.TYPE_11__* %52)
  store %struct.TYPE_11__* %53, %struct.TYPE_11__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %77

57:                                               ; preds = %51
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds %struct.iovec, %struct.iovec* %19, i64 0
  %60 = getelementptr inbounds %struct.iovec, %struct.iovec* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = getelementptr inbounds %struct.iovec, %struct.iovec* %19, i64 0
  %64 = getelementptr inbounds %struct.iovec, %struct.iovec* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 16
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @ngx_write_file(i32* %58, i32* %62, i64 %65, i32 %66)
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* @NGX_ERROR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  %72 = load i64, i64* %11, align 8
  store i64 %72, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %100

73:                                               ; preds = %57
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %11, align 8
  %76 = add nsw i64 %74, %75
  store i64 %76, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %100

77:                                               ; preds = %51
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i64 @ngx_writev_file(i32* %78, %struct.TYPE_10__* %12, i32 %79)
  store i64 %80, i64* %11, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* @NGX_ERROR, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i64, i64* %11, align 8
  store i64 %85, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %100

86:                                               ; preds = %77
  %87 = load i64, i64* %11, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %8, align 4
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* %10, align 8
  %94 = add nsw i64 %93, %92
  store i64 %94, i64* %10, align 8
  br label %95

95:                                               ; preds = %86
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %97 = icmp ne %struct.TYPE_11__* %96, null
  br i1 %97, label %51, label %98

98:                                               ; preds = %95
  %99 = load i64, i64* %10, align 8
  store i64 %99, i64* %5, align 8
  store i32 1, i32* %15, align 4
  br label %100

100:                                              ; preds = %98, %84, %73, %71, %24
  %101 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i64, i64* %5, align 8
  ret i64 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ngx_write_file(i32*, i32*, i64, i32) #2

declare dso_local %struct.TYPE_11__* @ngx_chain_to_iovec(%struct.TYPE_10__*, %struct.TYPE_11__*) #2

declare dso_local i64 @ngx_writev_file(i32*, %struct.TYPE_10__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
