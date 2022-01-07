; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_read.c_pg_strtok.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_read.c_pg_strtok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pg_strtok_ptr = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pg_strtok(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i8*, i8** @pg_strtok_ptr, align 8
  store i8* %6, i8** %4, align 8
  br label %7

7:                                                ; preds = %24, %1
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 9
  br label %22

22:                                               ; preds = %17, %12, %7
  %23 = phi i1 [ true, %12 ], [ true, %7 ], [ %21, %17 ]
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %4, align 8
  br label %7

27:                                               ; preds = %22
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32*, i32** %3, align 8
  store i32 0, i32* %33, align 4
  %34 = load i8*, i8** %4, align 8
  store i8* %34, i8** @pg_strtok_ptr, align 8
  store i8* null, i8** %2, align 8
  br label %149

35:                                               ; preds = %27
  %36 = load i8*, i8** %4, align 8
  store i8* %36, i8** %5, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 40
  br i1 %40, label %56, label %41

41:                                               ; preds = %35
  %42 = load i8*, i8** %4, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 41
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %4, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 123
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %4, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 125
  br i1 %55, label %56, label %59

56:                                               ; preds = %51, %46, %41, %35
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %4, align 8
  br label %121

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %119, %59
  %61 = load i8*, i8** %4, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %100

65:                                               ; preds = %60
  %66 = load i8*, i8** %4, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 32
  br i1 %69, label %70, label %100

70:                                               ; preds = %65
  %71 = load i8*, i8** %4, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 10
  br i1 %74, label %75, label %100

75:                                               ; preds = %70
  %76 = load i8*, i8** %4, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 9
  br i1 %79, label %80, label %100

80:                                               ; preds = %75
  %81 = load i8*, i8** %4, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 40
  br i1 %84, label %85, label %100

85:                                               ; preds = %80
  %86 = load i8*, i8** %4, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 41
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load i8*, i8** %4, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 123
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i8*, i8** %4, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 125
  br label %100

100:                                              ; preds = %95, %90, %85, %80, %75, %70, %65, %60
  %101 = phi i1 [ false, %90 ], [ false, %85 ], [ false, %80 ], [ false, %75 ], [ false, %70 ], [ false, %65 ], [ false, %60 ], [ %99, %95 ]
  br i1 %101, label %102, label %120

102:                                              ; preds = %100
  %103 = load i8*, i8** %4, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 92
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load i8*, i8** %4, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  store i8* %115, i8** %4, align 8
  br label %119

116:                                              ; preds = %107, %102
  %117 = load i8*, i8** %4, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %4, align 8
  br label %119

119:                                              ; preds = %116, %113
  br label %60

120:                                              ; preds = %100
  br label %121

121:                                              ; preds = %120, %56
  %122 = load i8*, i8** %4, align 8
  %123 = load i8*, i8** %5, align 8
  %124 = ptrtoint i8* %122 to i64
  %125 = ptrtoint i8* %123 to i64
  %126 = sub i64 %124, %125
  %127 = trunc i64 %126 to i32
  %128 = load i32*, i32** %3, align 8
  store i32 %127, i32* %128, align 4
  %129 = load i32*, i32** %3, align 8
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 2
  br i1 %131, label %132, label %146

132:                                              ; preds = %121
  %133 = load i8*, i8** %5, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 0
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 60
  br i1 %137, label %138, label %146

138:                                              ; preds = %132
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 62
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = load i32*, i32** %3, align 8
  store i32 0, i32* %145, align 4
  br label %146

146:                                              ; preds = %144, %138, %132, %121
  %147 = load i8*, i8** %4, align 8
  store i8* %147, i8** @pg_strtok_ptr, align 8
  %148 = load i8*, i8** %5, align 8
  store i8* %148, i8** %2, align 8
  br label %149

149:                                              ; preds = %146, %32
  %150 = load i8*, i8** %2, align 8
  ret i8* %150
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
