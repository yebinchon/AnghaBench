; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock2-tests.c_test_vma_management.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_mlock2-tests.c_test_vma_management.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_boundaries = type { i64 }

@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"mmap()\00", align 1
@MLOCK_ONFAULT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Cannot call new mlock family, skipping test\0A\00", align 1
@KSFT_SKIP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"mlock(ONFAULT)\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"couldn't find mapping in /proc/self/maps\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"VMAs are not merged to start, aborting test\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"munlock()\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to split VMA for munlock\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"failed to merge VMAs after munlock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_vma_management to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_vma_management(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vm_boundaries, align 8
  %8 = alloca %struct.vm_boundaries, align 8
  %9 = alloca %struct.vm_boundaries, align 8
  store i32 %0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %10 = call i64 (...) @getpagesize()
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = mul i64 3, %11
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @PROT_READ, align 4
  %15 = load i32, i32* @PROT_WRITE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MAP_ANONYMOUS, align 4
  %18 = load i32, i32* @MAP_PRIVATE, align 4
  %19 = or i32 %17, %18
  %20 = call i8* @mmap(i32* null, i32 %13, i32 %16, i32 %19, i32 -1, i32 0)
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** @MAP_FAILED, align 8
  %23 = icmp eq i8* %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %181

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = mul i64 3, %32
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @MLOCK_ONFAULT, align 4
  %36 = call i64 @mlock2_(i8* %31, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @ENOSYS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @KSFT_SKIP, align 4
  %45 = call i32 @_exit(i32 %44) #3
  unreachable

46:                                               ; preds = %38
  %47 = call i32 @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %174

48:                                               ; preds = %30, %27
  %49 = load i8*, i8** %5, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = call i64 @get_vm_area(i64 %50, %struct.vm_boundaries* %7)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** %5, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %55, %56
  %58 = call i64 @get_vm_area(i64 %57, %struct.vm_boundaries* %8)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %53
  %61 = load i8*, i8** %5, align 8
  %62 = ptrtoint i8* %61 to i64
  %63 = load i64, i64* %6, align 8
  %64 = mul i64 %63, 2
  %65 = add i64 %62, %64
  %66 = call i64 @get_vm_area(i64 %65, %struct.vm_boundaries* %9)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60, %53, %48
  %69 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %174

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.vm_boundaries, %struct.vm_boundaries* %7, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.vm_boundaries, %struct.vm_boundaries* %8, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %72, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.vm_boundaries, %struct.vm_boundaries* %8, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.vm_boundaries, %struct.vm_boundaries* %9, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76, %70
  %83 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %174

84:                                               ; preds = %76
  %85 = load i8*, i8** %5, align 8
  %86 = load i64, i64* %6, align 8
  %87 = getelementptr i8, i8* %85, i64 %86
  %88 = load i64, i64* %6, align 8
  %89 = call i64 @munlock(i8* %87, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %174

93:                                               ; preds = %84
  %94 = load i8*, i8** %5, align 8
  %95 = ptrtoint i8* %94 to i64
  %96 = call i64 @get_vm_area(i64 %95, %struct.vm_boundaries* %7)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %113, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** %5, align 8
  %100 = ptrtoint i8* %99 to i64
  %101 = load i64, i64* %6, align 8
  %102 = add i64 %100, %101
  %103 = call i64 @get_vm_area(i64 %102, %struct.vm_boundaries* %8)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %98
  %106 = load i8*, i8** %5, align 8
  %107 = ptrtoint i8* %106 to i64
  %108 = load i64, i64* %6, align 8
  %109 = mul i64 %108, 2
  %110 = add i64 %107, %109
  %111 = call i64 @get_vm_area(i64 %110, %struct.vm_boundaries* %9)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %105, %98, %93
  %114 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %174

115:                                              ; preds = %105
  %116 = getelementptr inbounds %struct.vm_boundaries, %struct.vm_boundaries* %7, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.vm_boundaries, %struct.vm_boundaries* %8, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %117, %119
  br i1 %120, label %127, label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.vm_boundaries, %struct.vm_boundaries* %8, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.vm_boundaries, %struct.vm_boundaries* %9, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %123, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %121, %115
  %128 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %174

129:                                              ; preds = %121
  %130 = load i8*, i8** %5, align 8
  %131 = load i64, i64* %6, align 8
  %132 = mul i64 %131, 3
  %133 = call i64 @munlock(i8* %130, i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %174

137:                                              ; preds = %129
  %138 = load i8*, i8** %5, align 8
  %139 = ptrtoint i8* %138 to i64
  %140 = call i64 @get_vm_area(i64 %139, %struct.vm_boundaries* %7)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %157, label %142

142:                                              ; preds = %137
  %143 = load i8*, i8** %5, align 8
  %144 = ptrtoint i8* %143 to i64
  %145 = load i64, i64* %6, align 8
  %146 = add i64 %144, %145
  %147 = call i64 @get_vm_area(i64 %146, %struct.vm_boundaries* %8)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %142
  %150 = load i8*, i8** %5, align 8
  %151 = ptrtoint i8* %150 to i64
  %152 = load i64, i64* %6, align 8
  %153 = mul i64 %152, 2
  %154 = add i64 %151, %153
  %155 = call i64 @get_vm_area(i64 %154, %struct.vm_boundaries* %9)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %149, %142, %137
  %158 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %174

159:                                              ; preds = %149
  %160 = getelementptr inbounds %struct.vm_boundaries, %struct.vm_boundaries* %7, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.vm_boundaries, %struct.vm_boundaries* %8, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %161, %163
  br i1 %164, label %171, label %165

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.vm_boundaries, %struct.vm_boundaries* %8, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.vm_boundaries, %struct.vm_boundaries* %9, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %167, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %165, %159
  %172 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  br label %174

173:                                              ; preds = %165
  store i32 0, i32* %4, align 4
  br label %174

174:                                              ; preds = %173, %171, %157, %135, %127, %113, %91, %82, %68, %46
  %175 = load i8*, i8** %5, align 8
  %176 = load i64, i64* %6, align 8
  %177 = mul i64 3, %176
  %178 = trunc i64 %177 to i32
  %179 = call i32 @munmap(i8* %175, i32 %178)
  %180 = load i32, i32* %4, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %174, %24
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i64 @getpagesize(...) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @mlock2_(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i64 @get_vm_area(i64, %struct.vm_boundaries*) #1

declare dso_local i64 @munlock(i8*, i64) #1

declare dso_local i32 @munmap(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
