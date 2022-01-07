; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_convert_hex_csv_to_hex.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_convert_hex_csv_to_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32, i8*, i64 }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parser*, i8**)* @convert_hex_csv_to_hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @convert_hex_csv_to_hex(%struct.parser* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i8** %1, i8*** %5, align 8
  %11 = load i8*, i8** @FALSE, align 8
  %12 = load %struct.parser*, %struct.parser** %4, align 8
  %13 = getelementptr inbounds %struct.parser, %struct.parser* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @lstrlenW(i8* %15)
  %17 = add nsw i32 %16, 1
  %18 = sdiv i32 %17, 2
  %19 = load %struct.parser*, %struct.parser** %4, align 8
  %20 = getelementptr inbounds %struct.parser, %struct.parser* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %18, %21
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %6, align 8
  %24 = load %struct.parser*, %struct.parser** %4, align 8
  %25 = getelementptr inbounds %struct.parser, %struct.parser* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @heap_xrealloc(i64 %26, i64 %27)
  %29 = load %struct.parser*, %struct.parser** %4, align 8
  %30 = getelementptr inbounds %struct.parser, %struct.parser* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %8, align 8
  %33 = load %struct.parser*, %struct.parser** %4, align 8
  %34 = getelementptr inbounds %struct.parser, %struct.parser* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = load %struct.parser*, %struct.parser** %4, align 8
  %38 = getelementptr inbounds %struct.parser, %struct.parser* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  store i32* %41, i32** %7, align 8
  br label %42

42:                                               ; preds = %154, %2
  %43 = load i8*, i8** %8, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %156

46:                                               ; preds = %42
  %47 = load i8*, i8** %8, align 8
  %48 = call i64 @strtoulW(i8* %47, i8** %9, i32 16)
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp ugt i64 %49, 255
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i8*, i8** @FALSE, align 8
  store i8* %52, i8** %3, align 8
  br label %158

53:                                               ; preds = %46
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = icmp eq i8* %54, %55
  br i1 %56, label %57, label %99

57:                                               ; preds = %53
  %58 = load i64, i64* %10, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %99

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %73, %60
  %62 = load i8*, i8** %9, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 32
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load i8*, i8** %9, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 9
  br label %71

71:                                               ; preds = %66, %61
  %72 = phi i1 [ true, %61 ], [ %70, %66 ]
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %9, align 8
  br label %61

76:                                               ; preds = %71
  %77 = load i8*, i8** %9, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 92
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load i8*, i8** @TRUE, align 8
  %83 = load %struct.parser*, %struct.parser** %4, align 8
  %84 = getelementptr inbounds %struct.parser, %struct.parser* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8**, i8*** %5, align 8
  store i8* %86, i8** %87, align 8
  %88 = load i8*, i8** @TRUE, align 8
  store i8* %88, i8** %3, align 8
  br label %158

89:                                               ; preds = %76
  %90 = load i8*, i8** %9, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 59
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i8*, i8** @TRUE, align 8
  store i8* %95, i8** %3, align 8
  br label %158

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96
  %98 = load i8*, i8** @FALSE, align 8
  store i8* %98, i8** %3, align 8
  br label %158

99:                                               ; preds = %57, %53
  %100 = load i64, i64* %10, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i32*, i32** %7, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %7, align 8
  store i32 %101, i32* %102, align 4
  %104 = load %struct.parser*, %struct.parser** %4, align 8
  %105 = getelementptr inbounds %struct.parser, %struct.parser* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %147

112:                                              ; preds = %99
  %113 = load i8*, i8** %9, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 44
  br i1 %116, label %117, label %147

117:                                              ; preds = %112
  br label %118

118:                                              ; preds = %130, %117
  %119 = load i8*, i8** %9, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 32
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load i8*, i8** %9, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 9
  br label %128

128:                                              ; preds = %123, %118
  %129 = phi i1 [ true, %118 ], [ %127, %123 ]
  br i1 %129, label %130, label %133

130:                                              ; preds = %128
  %131 = load i8*, i8** %9, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %9, align 8
  br label %118

133:                                              ; preds = %128
  %134 = load i8*, i8** %9, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load i8*, i8** %9, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 59
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i8*, i8** @FALSE, align 8
  store i8* %144, i8** %3, align 8
  br label %158

145:                                              ; preds = %138, %133
  %146 = load i8*, i8** @TRUE, align 8
  store i8* %146, i8** %3, align 8
  br label %158

147:                                              ; preds = %112, %99
  %148 = load i8*, i8** %9, align 8
  %149 = load i8, i8* %148, align 1
  %150 = icmp ne i8 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i8*, i8** %9, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %9, align 8
  br label %154

154:                                              ; preds = %151, %147
  %155 = load i8*, i8** %9, align 8
  store i8* %155, i8** %8, align 8
  br label %42

156:                                              ; preds = %42
  %157 = load i8*, i8** @TRUE, align 8
  store i8* %157, i8** %3, align 8
  br label %158

158:                                              ; preds = %156, %145, %143, %97, %94, %81, %51
  %159 = load i8*, i8** %3, align 8
  ret i8* %159
}

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i64 @heap_xrealloc(i64, i64) #1

declare dso_local i64 @strtoulW(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
