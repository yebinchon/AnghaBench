; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_localtime.c_pg_interpret_timezone_abbrev.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_localtime.c_pg_interpret_timezone_abbrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.state }
%struct.state = type { i8*, i32, i32, i64*, i64*, %struct.ttinfo* }
%struct.ttinfo = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_interpret_timezone_abbrev(i8* %0, i64* %1, i64* %2, i32* %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca %struct.state*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ttinfo*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %11, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %18, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.state* %25, %struct.state** %12, align 8
  %26 = load %struct.state*, %struct.state** %12, align 8
  %27 = getelementptr inbounds %struct.state, %struct.state* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %13, align 8
  store i32 0, i32* %15, align 4
  br label %29

29:                                               ; preds = %56, %5
  %30 = load i32, i32* %15, align 4
  %31 = load %struct.state*, %struct.state** %12, align 8
  %32 = getelementptr inbounds %struct.state, %struct.state* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = call i64 @strcmp(i8* %36, i8* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %59

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %53, %44
  %46 = load i8*, i8** %13, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %15, align 4
  br label %45

56:                                               ; preds = %45
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %15, align 4
  br label %29

59:                                               ; preds = %43, %29
  %60 = load i32, i32* %15, align 4
  %61 = load %struct.state*, %struct.state** %12, align 8
  %62 = getelementptr inbounds %struct.state, %struct.state* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp sge i32 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  br label %170

66:                                               ; preds = %59
  store i32 0, i32* %19, align 4
  %67 = load %struct.state*, %struct.state** %12, align 8
  %68 = getelementptr inbounds %struct.state, %struct.state* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %20, align 4
  br label %70

70:                                               ; preds = %93, %66
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* %20, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %70
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* %20, align 4
  %77 = add nsw i32 %75, %76
  %78 = ashr i32 %77, 1
  store i32 %78, i32* %21, align 4
  %79 = load i64, i64* %18, align 8
  %80 = load %struct.state*, %struct.state** %12, align 8
  %81 = getelementptr inbounds %struct.state, %struct.state* %80, i32 0, i32 3
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %21, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %79, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %74
  %89 = load i32, i32* %21, align 4
  store i32 %89, i32* %20, align 4
  br label %93

90:                                               ; preds = %74
  %91 = load i32, i32* %21, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %19, align 4
  br label %93

93:                                               ; preds = %90, %88
  br label %70

94:                                               ; preds = %70
  %95 = load i32, i32* %19, align 4
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %17, align 4
  br label %98

98:                                               ; preds = %128, %94
  %99 = load i32, i32* %17, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %131

101:                                              ; preds = %98
  %102 = load %struct.state*, %struct.state** %12, align 8
  %103 = getelementptr inbounds %struct.state, %struct.state* %102, i32 0, i32 5
  %104 = load %struct.ttinfo*, %struct.ttinfo** %103, align 8
  %105 = load %struct.state*, %struct.state** %12, align 8
  %106 = getelementptr inbounds %struct.state, %struct.state* %105, i32 0, i32 4
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %104, i64 %111
  store %struct.ttinfo* %112, %struct.ttinfo** %14, align 8
  %113 = load %struct.ttinfo*, %struct.ttinfo** %14, align 8
  %114 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %15, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %101
  %119 = load %struct.ttinfo*, %struct.ttinfo** %14, align 8
  %120 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64*, i64** %9, align 8
  store i64 %121, i64* %122, align 8
  %123 = load %struct.ttinfo*, %struct.ttinfo** %14, align 8
  %124 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32*, i32** %10, align 8
  store i32 %125, i32* %126, align 4
  store i32 1, i32* %6, align 4
  br label %170

127:                                              ; preds = %101
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %17, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %17, align 4
  br label %98

131:                                              ; preds = %98
  %132 = load i32, i32* %16, align 4
  store i32 %132, i32* %17, align 4
  br label %133

133:                                              ; preds = %166, %131
  %134 = load i32, i32* %17, align 4
  %135 = load %struct.state*, %struct.state** %12, align 8
  %136 = getelementptr inbounds %struct.state, %struct.state* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %169

139:                                              ; preds = %133
  %140 = load %struct.state*, %struct.state** %12, align 8
  %141 = getelementptr inbounds %struct.state, %struct.state* %140, i32 0, i32 5
  %142 = load %struct.ttinfo*, %struct.ttinfo** %141, align 8
  %143 = load %struct.state*, %struct.state** %12, align 8
  %144 = getelementptr inbounds %struct.state, %struct.state* %143, i32 0, i32 4
  %145 = load i64*, i64** %144, align 8
  %146 = load i32, i32* %17, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %142, i64 %149
  store %struct.ttinfo* %150, %struct.ttinfo** %14, align 8
  %151 = load %struct.ttinfo*, %struct.ttinfo** %14, align 8
  %152 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %15, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %139
  %157 = load %struct.ttinfo*, %struct.ttinfo** %14, align 8
  %158 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64*, i64** %9, align 8
  store i64 %159, i64* %160, align 8
  %161 = load %struct.ttinfo*, %struct.ttinfo** %14, align 8
  %162 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i32*, i32** %10, align 8
  store i32 %163, i32* %164, align 4
  store i32 1, i32* %6, align 4
  br label %170

165:                                              ; preds = %139
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %17, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %17, align 4
  br label %133

169:                                              ; preds = %133
  store i32 0, i32* %6, align 4
  br label %170

170:                                              ; preds = %169, %156, %118, %65
  %171 = load i32, i32* %6, align 4
  ret i32 %171
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
