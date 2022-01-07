; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_virtual_address_range.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_virtual_address_range.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NR_CHUNKS_LOW = common dso_local global i32 0, align 4
@NR_CHUNKS_HIGH = common dso_local global i32 0, align 4
@MAP_CHUNK_SIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* @NR_CHUNKS_LOW, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8*, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @NR_CHUNKS_HIGH, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8*, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %55, %2
  %22 = load i64, i64* %10, align 8
  %23 = load i32, i32* @NR_CHUNKS_LOW, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %21
  %27 = load i32, i32* @MAP_CHUNK_SIZE, align 4
  %28 = load i32, i32* @PROT_READ, align 4
  %29 = load i32, i32* @PROT_WRITE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @MAP_PRIVATE, align 4
  %32 = load i32, i32* @MAP_ANONYMOUS, align 4
  %33 = or i32 %31, %32
  %34 = call i8* @mmap(i8* null, i32 %27, i32 %30, i32 %33, i32 -1, i32 0)
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i8*, i8** %17, i64 %35
  store i8* %34, i8** %36, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds i8*, i8** %17, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** @MAP_FAILED, align 8
  %41 = icmp eq i8* %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %26
  %43 = call i64 (...) @validate_lower_address_hint()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %125

46:                                               ; preds = %42
  br label %58

47:                                               ; preds = %26
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds i8*, i8** %17, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @validate_addr(i8* %50, i32 0)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %125

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %10, align 8
  br label %21

58:                                               ; preds = %46, %21
  %59 = load i64, i64* %10, align 8
  store i64 %59, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %60

60:                                               ; preds = %92, %58
  %61 = load i64, i64* %10, align 8
  %62 = load i32, i32* @NR_CHUNKS_HIGH, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ult i64 %61, %63
  br i1 %64, label %65, label %95

65:                                               ; preds = %60
  %66 = call i8* (...) @hind_addr()
  store i8* %66, i8** %9, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i32, i32* @MAP_CHUNK_SIZE, align 4
  %69 = load i32, i32* @PROT_READ, align 4
  %70 = load i32, i32* @PROT_WRITE, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @MAP_PRIVATE, align 4
  %73 = load i32, i32* @MAP_ANONYMOUS, align 4
  %74 = or i32 %72, %73
  %75 = call i8* @mmap(i8* %67, i32 %68, i32 %71, i32 %74, i32 -1, i32 0)
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds i8*, i8** %20, i64 %76
  store i8* %75, i8** %77, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds i8*, i8** %20, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** @MAP_FAILED, align 8
  %82 = icmp eq i8* %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %65
  br label %95

84:                                               ; preds = %65
  %85 = load i64, i64* %10, align 8
  %86 = getelementptr inbounds i8*, i8** %20, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @validate_addr(i8* %87, i32 1)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %125

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %10, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %10, align 8
  br label %60

95:                                               ; preds = %83, %60
  %96 = load i64, i64* %10, align 8
  store i64 %96, i64* %12, align 8
  store i64 0, i64* %10, align 8
  br label %97

97:                                               ; preds = %107, %95
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %11, align 8
  %100 = icmp ult i64 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = load i64, i64* %10, align 8
  %103 = getelementptr inbounds i8*, i8** %17, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* @MAP_CHUNK_SIZE, align 4
  %106 = call i32 @munmap(i8* %104, i32 %105)
  br label %107

107:                                              ; preds = %101
  %108 = load i64, i64* %10, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %10, align 8
  br label %97

110:                                              ; preds = %97
  store i64 0, i64* %10, align 8
  br label %111

111:                                              ; preds = %121, %110
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* %12, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %111
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds i8*, i8** %20, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* @MAP_CHUNK_SIZE, align 4
  %120 = call i32 @munmap(i8* %118, i32 %119)
  br label %121

121:                                              ; preds = %115
  %122 = load i64, i64* %10, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %10, align 8
  br label %111

124:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %125

125:                                              ; preds = %124, %90, %53, %45
  %126 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %126)
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @mmap(i8*, i32, i32, i32, i32, i32) #2

declare dso_local i64 @validate_lower_address_hint(...) #2

declare dso_local i64 @validate_addr(i8*, i32) #2

declare dso_local i8* @hind_addr(...) #2

declare dso_local i32 @munmap(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
