; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_range-file.c_rangefile_read.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_range-file.c_rangefile_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RangeList = type { i32 }
%struct.Range6List = type { i32 }
%struct.RangeParser = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s:%llu:%llu: parse err\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"[-] fail\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"[+] %s: %u addresses read\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rangefile_read(i8* %0, %struct.RangeList* %1, %struct.Range6List* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.RangeList*, align 8
  %7 = alloca %struct.Range6List*, align 8
  %8 = alloca %struct.RangeParser*, align 8
  %9 = alloca [65536 x i8], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.RangeList* %1, %struct.RangeList** %6, align 8
  store %struct.Range6List* %2, %struct.Range6List** %7, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @fopen_s(i32** %10, i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32*, i32** %10, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %3
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @perror(i8* %35)
  %37 = call i32 @exit(i32 1) #3
  unreachable

38:                                               ; preds = %31
  %39 = call %struct.RangeParser* (...) @rangeparse_create()
  store %struct.RangeParser* %39, %struct.RangeParser** %8, align 8
  br label %40

40:                                               ; preds = %96, %38
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br i1 %43, label %44, label %97

44:                                               ; preds = %40
  %45 = getelementptr inbounds [65536 x i8], [65536 x i8]* %9, i64 0, i64 0
  %46 = load i32*, i32** %10, align 8
  %47 = call i64 @fread(i8* %45, i32 1, i32 65536, i32* %46)
  store i64 %47, i64* %14, align 8
  %48 = load i64, i64* %14, align 8
  %49 = icmp ule i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %97

51:                                               ; preds = %44
  store i64 0, i64* %15, align 8
  br label %52

52:                                               ; preds = %95, %51
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %14, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %96

56:                                               ; preds = %52
  %57 = load %struct.RangeParser*, %struct.RangeParser** %8, align 8
  %58 = getelementptr inbounds [65536 x i8], [65536 x i8]* %9, i64 0, i64 0
  %59 = load i64, i64* %14, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @rangeparse_next(%struct.RangeParser* %57, i8* %58, i64* %15, i32 %60, i32* %17, i32* %18)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = load %struct.RangeParser*, %struct.RangeParser** %8, align 8
  %66 = call i32 @rangeparse_err(%struct.RangeParser* %65, i64* %19, i64* %20)
  %67 = load i32, i32* @stderr, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = load i64, i64* %19, align 8
  %70 = load i64, i64* %20, align 8
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %68, i64 %69, i64 %70)
  store i32 1, i32* %12, align 4
  br label %96

72:                                               ; preds = %56
  %73 = load i32, i32* %16, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.RangeList*, %struct.RangeList** %6, align 8
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %18, align 4
  %79 = call i32 @rangelist_add_range(%struct.RangeList* %76, i32 %77, i32 %78)
  %80 = load i32, i32* %13, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %94

82:                                               ; preds = %72
  %83 = load i32, i32* %16, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i64, i64* %15, align 8
  %87 = load i64, i64* %14, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* @stderr, align 4
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %85
  br label %93

93:                                               ; preds = %92, %82
  br label %94

94:                                               ; preds = %93, %75
  br label %95

95:                                               ; preds = %94
  br label %52

96:                                               ; preds = %64, %52
  br label %40

97:                                               ; preds = %50, %40
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @fclose(i32* %98)
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %127, label %102

102:                                              ; preds = %97
  store i64 0, i64* %22, align 8
  %103 = load %struct.RangeParser*, %struct.RangeParser** %8, align 8
  %104 = call i32 @rangeparse_next(%struct.RangeParser* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64* %22, i32 1, i32* %23, i32* %24)
  store i32 %104, i32* %21, align 4
  %105 = load i32, i32* %21, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load %struct.RangeParser*, %struct.RangeParser** %8, align 8
  %109 = call i32 @rangeparse_err(%struct.RangeParser* %108, i64* %25, i64* %26)
  %110 = load i32, i32* @stderr, align 4
  %111 = load i8*, i8** %5, align 8
  %112 = load i64, i64* %25, align 8
  %113 = load i64, i64* %26, align 8
  %114 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %111, i64 %112, i64 %113)
  store i32 1, i32* %12, align 4
  br label %126

115:                                              ; preds = %102
  %116 = load i32, i32* %21, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load %struct.RangeList*, %struct.RangeList** %6, align 8
  %120 = load i32, i32* %23, align 4
  %121 = load i32, i32* %24, align 4
  %122 = call i32 @rangelist_add_range(%struct.RangeList* %119, i32 %120, i32 %121)
  %123 = load i32, i32* %13, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %118, %115
  br label %126

126:                                              ; preds = %125, %107
  br label %127

127:                                              ; preds = %126, %97
  %128 = load i8*, i8** %5, align 8
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @LOG(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %128, i32 %129)
  %131 = load %struct.RangeList*, %struct.RangeList** %6, align 8
  %132 = call i32 @rangelist_sort(%struct.RangeList* %131)
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  store i32 -1, i32* %4, align 4
  br label %137

136:                                              ; preds = %127
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %136, %135
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @fopen_s(i32**, i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.RangeParser* @rangeparse_create(...) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @rangeparse_next(%struct.RangeParser*, i8*, i64*, i32, i32*, i32*) #1

declare dso_local i32 @rangeparse_err(%struct.RangeParser*, i64*, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @rangelist_add_range(%struct.RangeList*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @LOG(i32, i8*, i8*, i32) #1

declare dso_local i32 @rangelist_sort(%struct.RangeList*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
