; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_mem_dbg.c_print_leak.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_mem_dbg.c_print_leak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 (i8*, i64, i32)* }
%struct.tm = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"[%02d:%02d:%02d] \00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%5lu file=%s, line=%d, \00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"thread=%s, number=%d, address=%p\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"##> %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*)* @print_leak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_leak(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tm*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  store i8* %13, i8** %6, align 8
  store i64 1024, i64* %8, align 8
  store %struct.tm* null, %struct.tm** %10, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 8
  %16 = call %struct.tm* @localtime(i32* %15)
  store %struct.tm* %16, %struct.tm** %10, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.tm*, %struct.tm** %10, align 8
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.tm*, %struct.tm** %10, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tm*, %struct.tm** %10, align 8
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @BIO_snprintf(i8* %17, i64 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %24, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 0, i8* %33, align 1
  br label %145

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %8, align 8
  %42 = sub i64 %41, %40
  store i64 %42, i64* %8, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @BIO_snprintf(i8* %43, i64 %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %47, i32 %50, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %34
  br label %145

58:                                               ; preds = %34
  %59 = load i32, i32* %9, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %8, align 8
  %66 = sub i64 %65, %64
  store i64 %66, i64* %8, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 5
  %69 = bitcast i32* %68 to i8*
  %70 = call i8* @OPENSSL_buf2hexstr(i8* %69, i32 4)
  store i8* %70, i8** %7, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @BIO_snprintf(i8* %71, i64 %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %73, i32 %76, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @OPENSSL_free(i8* %81)
  %83 = load i32, i32* %9, align 4
  %84 = icmp sle i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %58
  br label %145

86:                                               ; preds = %58
  %87 = load i32, i32* %9, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %6, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %8, align 8
  %94 = sub i64 %93, %92
  store i64 %94, i64* %8, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 3
  %97 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %96, align 8
  %98 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 %97(i8* %98, i64 %103, i32 %106)
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, %114
  store i32 %118, i32* %116, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i8** @backtrace_symbols(i32 %121, i64 %124)
  store i8** %125, i8*** %12, align 8
  store i64 0, i64* %11, align 8
  br label %126

126:                                              ; preds = %139, %86
  %127 = load i64, i64* %11, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ult i64 %127, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %126
  %133 = load i32, i32* @stderr, align 4
  %134 = load i8**, i8*** %12, align 8
  %135 = load i64, i64* %11, align 8
  %136 = getelementptr inbounds i8*, i8** %134, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @fprintf(i32 %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %137)
  br label %139

139:                                              ; preds = %132
  %140 = load i64, i64* %11, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %11, align 8
  br label %126

142:                                              ; preds = %126
  %143 = load i8**, i8*** %12, align 8
  %144 = call i32 @free(i8** %143)
  br label %145

145:                                              ; preds = %142, %85, %57, %31
  ret void
}

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @BIO_snprintf(i8*, i64, i8*, i8*, i32, i32) #1

declare dso_local i8* @OPENSSL_buf2hexstr(i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i8** @backtrace_symbols(i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
