; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/findstr/extr_findstr.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/findstr/extr_findstr.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._finddata_t = type { i8* }

@stdin = common dso_local global i32* null, align 8
@IDS_NO_SUCH_FILE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"---------------- %s\0A\00", align 1
@IDS_CANNOT_OPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4096 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct._finddata_t, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %24

24:                                               ; preds = %65, %2
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8*, i8** %7, align 8
  %30 = icmp eq i8* %29, null
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i1 [ false, %24 ], [ %30, %28 ]
  br i1 %32, label %33, label %66

33:                                               ; preds = %31
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %35, i8*** %5, align 8
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 47
  br i1 %39, label %40, label %58

40:                                               ; preds = %33
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  switch i32 %44, label %54 [
    i32 98, label %45
    i32 66, label %45
    i32 101, label %46
    i32 69, label %46
    i32 105, label %47
    i32 73, label %47
    i32 109, label %48
    i32 77, label %48
    i32 110, label %49
    i32 78, label %49
    i32 114, label %50
    i32 82, label %50
    i32 115, label %51
    i32 83, label %51
    i32 118, label %52
    i32 86, label %52
    i32 120, label %53
    i32 88, label %53
  ]

45:                                               ; preds = %40, %40
  store i32 1, i32* %14, align 4
  br label %57

46:                                               ; preds = %40, %40
  store i32 1, i32* %15, align 4
  br label %57

47:                                               ; preds = %40, %40
  store i32 1, i32* %13, align 4
  br label %57

48:                                               ; preds = %40, %40
  store i32 1, i32* %19, align 4
  br label %57

49:                                               ; preds = %40, %40
  store i32 1, i32* %12, align 4
  br label %57

50:                                               ; preds = %40, %40
  store i32 1, i32* %16, align 4
  br label %57

51:                                               ; preds = %40, %40
  store i32 1, i32* %18, align 4
  br label %57

52:                                               ; preds = %40, %40
  store i32 1, i32* %10, align 4
  br label %57

53:                                               ; preds = %40, %40
  store i32 1, i32* %17, align 4
  br label %57

54:                                               ; preds = %40
  %55 = call i32 (...) @usage()
  %56 = call i32 @exit(i32 2) #3
  unreachable

57:                                               ; preds = %53, %52, %51, %50, %49, %48, %47, %46, %45
  br label %65

58:                                               ; preds = %33
  %59 = load i8*, i8** %7, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8**, i8*** %5, align 8
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %7, align 8
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64, %57
  br label %24

66:                                               ; preds = %31
  %67 = load i8*, i8** %7, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = call i32 (...) @usage()
  %71 = call i32 @exit(i32 1) #3
  unreachable

72:                                               ; preds = %66
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %72
  %76 = load i8*, i8** %7, align 8
  %77 = load i32*, i32** @stdin, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %20, align 4
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %19, align 4
  %89 = call i32 @find_str(i8* %76, i32* %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %75, %72
  br label %91

91:                                               ; preds = %162, %90
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %4, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %165

95:                                               ; preds = %91
  %96 = load i8**, i8*** %5, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i32 1
  store i8** %97, i8*** %5, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @_findfirst(i8* %98, %struct._finddata_t* %23)
  store i32 %99, i32* %22, align 4
  %100 = load i32, i32* %22, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %95
  %103 = call i32 @GetModuleHandle(i32* null)
  %104 = load i32, i32* @IDS_NO_SUCH_FILE, align 4
  %105 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %106 = ptrtoint i8* %105 to i32
  %107 = call i32 @LoadString(i32 %103, i32 %104, i32 %106, i32 4096)
  %108 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %109 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %110 = call i32 @CharToOem(i8* %108, i8* %109)
  %111 = load i32, i32* @stderr, align 4
  %112 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %113 = load i8**, i8*** %5, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @fprintf(i32 %111, i8* %112, i8* %114)
  br label %162

116:                                              ; preds = %95
  br label %117

117:                                              ; preds = %157, %116
  %118 = getelementptr inbounds %struct._finddata_t, %struct._finddata_t* %23, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32* @fopen(i8* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %120, i32** %21, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %142

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct._finddata_t, %struct._finddata_t* %23, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %124)
  %126 = load i8*, i8** %7, align 8
  %127 = load i32*, i32** %21, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %20, align 4
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %19, align 4
  %139 = call i32 @find_str(i8* %126, i32* %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138)
  store i32 %139, i32* %8, align 4
  %140 = load i32*, i32** %21, align 8
  %141 = call i32 @fclose(i32* %140)
  br label %156

142:                                              ; preds = %117
  %143 = call i32 @GetModuleHandle(i32* null)
  %144 = load i32, i32* @IDS_CANNOT_OPEN, align 4
  %145 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %146 = ptrtoint i8* %145 to i32
  %147 = call i32 @LoadString(i32 %143, i32 %144, i32 %146, i32 4096)
  %148 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %149 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %150 = call i32 @CharToOem(i8* %148, i8* %149)
  %151 = load i32, i32* @stderr, align 4
  %152 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %153 = getelementptr inbounds %struct._finddata_t, %struct._finddata_t* %23, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @fprintf(i32 %151, i8* %152, i8* %154)
  br label %156

156:                                              ; preds = %142, %122
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %22, align 4
  %159 = call i64 @_findnext(i32 %158, %struct._finddata_t* %23)
  %160 = icmp sgt i64 %159, 0
  br i1 %160, label %117, label %161

161:                                              ; preds = %157
  br label %162

162:                                              ; preds = %161, %102
  %163 = load i32, i32* %22, align 4
  %164 = call i32 @_findclose(i32 %163)
  br label %91

165:                                              ; preds = %91
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 0, i32 1
  %170 = call i32 @exit(i32 %169) #3
  unreachable
}

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @find_str(i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_findfirst(i8*, %struct._finddata_t*) #1

declare dso_local i32 @LoadString(i32, i32, i32, i32) #1

declare dso_local i32 @GetModuleHandle(i32*) #1

declare dso_local i32 @CharToOem(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @_findnext(i32, %struct._finddata_t*) #1

declare dso_local i32 @_findclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
