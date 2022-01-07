; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_uimage_padhdr.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_uimage_padhdr.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.TYPE_2__ = type { i64 }

@IH_PAD_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"i:o:l:\00", align 1
@optarg = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"could not open input file. (errno = %d)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"could not open output file. (errno = %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"could not fstat input file. (errno = %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"buffer allocation failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"could not read input file (errno = %d).\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"could not write output file (errnor = %d).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %18 = load i32, i32* @IH_PAD_BYTES, align 4
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %39, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %13, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load i32, i32* %13, align 4
  switch i32 %25, label %38 [
    i32 105, label %26
    i32 111, label %28
    i32 108, label %30
  ]

26:                                               ; preds = %24
  %27 = load i8*, i8** @optarg, align 8
  store i8* %27, i8** %14, align 8
  br label %39

28:                                               ; preds = %24
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** %15, align 8
  br label %39

30:                                               ; preds = %24
  %31 = load i8*, i8** @optarg, align 8
  %32 = call i32 @strtol(i8* %31, i32* null, i32 0)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %17, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %17, align 4
  store i32 %36, i32* %16, align 4
  br label %37

37:                                               ; preds = %35, %30
  br label %39

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38, %37, %28, %26
  br label %19

40:                                               ; preds = %19
  %41 = load i8*, i8** %14, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i8*, i8** %15, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %43, %40
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @usage(i8* %49)
  %51 = call i32 @exit(i32 1) #3
  unreachable

52:                                               ; preds = %43
  %53 = load i8*, i8** %14, align 8
  %54 = load i32, i32* @O_RDONLY, align 4
  %55 = call i32 (i8*, i32, ...) @open(i8* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i32, i32* @stderr, align 4
  %60 = load i32, i32* @errno, align 4
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = call i32 @exit(i32 1) #3
  unreachable

63:                                               ; preds = %52
  %64 = load i8*, i8** %15, align 8
  %65 = load i32, i32* @O_WRONLY, align 4
  %66 = load i32, i32* @O_CREAT, align 4
  %67 = or i32 %65, %66
  %68 = call i32 (i8*, i32, ...) @open(i8* %64, i32 %67, i32 420)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load i32, i32* @stderr, align 4
  %73 = load i32, i32* @errno, align 4
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = call i32 @exit(i32 1) #3
  unreachable

76:                                               ; preds = %63
  %77 = load i32, i32* %8, align 4
  %78 = call i64 @fstat(i32 %77, %struct.stat* %6)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32, i32* @stderr, align 4
  %82 = load i32, i32* @errno, align 4
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = call i32 @exit(i32 1) #3
  unreachable

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %87, %88
  %90 = call i32* @malloc(i32 %89)
  store i32* %90, i32** %7, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %85
  %94 = load i32, i32* @stderr, align 4
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %96 = call i32 @exit(i32 1) #3
  unreachable

97:                                               ; preds = %85
  %98 = load i32, i32* %8, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @read(i32 %98, i32* %99, i32 8)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = icmp ne i64 %102, 8
  br i1 %103, label %104, label %109

104:                                              ; preds = %97
  %105 = load i32, i32* @stderr, align 4
  %106 = load i32, i32* @errno, align 4
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  %108 = call i32 @exit(i32 1) #3
  unreachable

109:                                              ; preds = %97
  %110 = load i32*, i32** %7, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 8
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @memset(i32* %111, i32 0, i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* %16, align 4
  %117 = sext i32 %116 to i64
  %118 = add i64 8, %117
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = sub i64 %122, 8
  %124 = trunc i64 %123 to i32
  %125 = call i32 @read(i32 %114, i32* %119, i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = sub i64 %129, 8
  %131 = trunc i64 %130 to i32
  %132 = icmp ne i32 %126, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %109
  %134 = load i32, i32* @stderr, align 4
  %135 = load i32, i32* @errno, align 4
  %136 = call i32 (i32, i8*, ...) @fprintf(i32 %134, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %135)
  %137 = call i32 @exit(i32 1) #3
  unreachable

138:                                              ; preds = %109
  %139 = load i32*, i32** %7, align 8
  %140 = bitcast i32* %139 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %140, %struct.TYPE_2__** %12, align 8
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  store i64 0, i64* %142, align 8
  %143 = load i32*, i32** %7, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = add i64 8, %145
  %147 = trunc i64 %146 to i32
  %148 = call i32 @crc32(i32 0, i32* %143, i32 %147)
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = call i64 @htonl(i32 %149)
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  %153 = load i32, i32* %9, align 4
  %154 = load i32*, i32** %7, align 8
  %155 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %16, align 4
  %158 = add nsw i32 %156, %157
  %159 = call i32 @write(i32 %153, i32* %154, i32 %158)
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %10, align 4
  %161 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %16, align 4
  %164 = add nsw i32 %162, %163
  %165 = icmp ne i32 %160, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %138
  %167 = load i32, i32* @stderr, align 4
  %168 = load i32, i32* @errno, align 4
  %169 = call i32 (i32, i8*, ...) @fprintf(i32 %167, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %168)
  %170 = call i32 @exit(i32 1) #3
  unreachable

171:                                              ; preds = %138
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @usage(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @crc32(i32, i32*, i32) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @write(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
