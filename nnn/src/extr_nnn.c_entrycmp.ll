; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_entrycmp.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_entrycmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.entry = type { i32, i64, i64, i64, i64 }

@DIR_OR_LINK_TO_DIR = common dso_local global i32 0, align 4
@cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @entrycmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @entrycmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.entry*, align 8
  %7 = alloca %struct.entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.entry*
  store %struct.entry* %12, %struct.entry** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.entry*
  store %struct.entry* %14, %struct.entry** %7, align 8
  %15 = load %struct.entry*, %struct.entry** %7, align 8
  %16 = getelementptr inbounds %struct.entry, %struct.entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @DIR_OR_LINK_TO_DIR, align 4
  %19 = and i32 %17, %18
  %20 = load %struct.entry*, %struct.entry** %6, align 8
  %21 = getelementptr inbounds %struct.entry, %struct.entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DIR_OR_LINK_TO_DIR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %19, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.entry*, %struct.entry** %7, align 8
  %28 = getelementptr inbounds %struct.entry, %struct.entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DIR_OR_LINK_TO_DIR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %164

34:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %164

35:                                               ; preds = %2
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfg, i32 0, i32 3), align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  %39 = load %struct.entry*, %struct.entry** %7, align 8
  %40 = getelementptr inbounds %struct.entry, %struct.entry* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.entry*, %struct.entry** %6, align 8
  %43 = getelementptr inbounds %struct.entry, %struct.entry* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %164

47:                                               ; preds = %38
  %48 = load %struct.entry*, %struct.entry** %7, align 8
  %49 = getelementptr inbounds %struct.entry, %struct.entry* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.entry*, %struct.entry** %6, align 8
  %52 = getelementptr inbounds %struct.entry, %struct.entry* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 -1, i32* %3, align 4
  br label %164

56:                                               ; preds = %47
  br label %156

57:                                               ; preds = %35
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfg, i32 0, i32 2), align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %57
  %61 = load %struct.entry*, %struct.entry** %7, align 8
  %62 = getelementptr inbounds %struct.entry, %struct.entry* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.entry*, %struct.entry** %6, align 8
  %65 = getelementptr inbounds %struct.entry, %struct.entry* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 1, i32* %3, align 4
  br label %164

69:                                               ; preds = %60
  %70 = load %struct.entry*, %struct.entry** %7, align 8
  %71 = getelementptr inbounds %struct.entry, %struct.entry* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.entry*, %struct.entry** %6, align 8
  %74 = getelementptr inbounds %struct.entry, %struct.entry* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  store i32 -1, i32* %3, align 4
  br label %164

78:                                               ; preds = %69
  br label %155

79:                                               ; preds = %57
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfg, i32 0, i32 1), align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %79
  %83 = load %struct.entry*, %struct.entry** %7, align 8
  %84 = getelementptr inbounds %struct.entry, %struct.entry* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.entry*, %struct.entry** %6, align 8
  %87 = getelementptr inbounds %struct.entry, %struct.entry* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i32 1, i32* %3, align 4
  br label %164

91:                                               ; preds = %82
  %92 = load %struct.entry*, %struct.entry** %7, align 8
  %93 = getelementptr inbounds %struct.entry, %struct.entry* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.entry*, %struct.entry** %6, align 8
  %96 = getelementptr inbounds %struct.entry, %struct.entry* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  store i32 -1, i32* %3, align 4
  br label %164

100:                                              ; preds = %91
  br label %154

101:                                              ; preds = %79
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfg, i32 0, i32 0), align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %153

104:                                              ; preds = %101
  %105 = load %struct.entry*, %struct.entry** %7, align 8
  %106 = getelementptr inbounds %struct.entry, %struct.entry* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @DIR_OR_LINK_TO_DIR, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %153, label %111

111:                                              ; preds = %104
  %112 = load %struct.entry*, %struct.entry** %6, align 8
  %113 = getelementptr inbounds %struct.entry, %struct.entry* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i32*
  %116 = load %struct.entry*, %struct.entry** %6, align 8
  %117 = getelementptr inbounds %struct.entry, %struct.entry* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @strlen(i64 %118)
  %120 = call i8* @xmemrchr(i32* %115, i8 signext 46, i32 %119)
  store i8* %120, i8** %8, align 8
  %121 = load %struct.entry*, %struct.entry** %7, align 8
  %122 = getelementptr inbounds %struct.entry, %struct.entry* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to i32*
  %125 = load %struct.entry*, %struct.entry** %7, align 8
  %126 = getelementptr inbounds %struct.entry, %struct.entry* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @strlen(i64 %127)
  %129 = call i8* @xmemrchr(i32* %124, i8 signext 46, i32 %128)
  store i8* %129, i8** %9, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %111
  %133 = load i8*, i8** %9, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %152

135:                                              ; preds = %132, %111
  %136 = load i8*, i8** %8, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %135
  store i32 1, i32* %3, align 4
  br label %164

139:                                              ; preds = %135
  %140 = load i8*, i8** %9, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %139
  store i32 -1, i32* %3, align 4
  br label %164

143:                                              ; preds = %139
  %144 = load i8*, i8** %8, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = call i32 @strcasecmp(i8* %144, i8* %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = load i32, i32* %10, align 4
  store i32 %150, i32* %3, align 4
  br label %164

151:                                              ; preds = %143
  br label %152

152:                                              ; preds = %151, %132
  br label %153

153:                                              ; preds = %152, %104, %101
  br label %154

154:                                              ; preds = %153, %100
  br label %155

155:                                              ; preds = %154, %78
  br label %156

156:                                              ; preds = %155, %56
  %157 = load %struct.entry*, %struct.entry** %6, align 8
  %158 = getelementptr inbounds %struct.entry, %struct.entry* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.entry*, %struct.entry** %7, align 8
  %161 = getelementptr inbounds %struct.entry, %struct.entry* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @cmpfn(i64 %159, i64 %162)
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %156, %149, %142, %138, %99, %90, %77, %68, %55, %46, %34, %33
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i8* @xmemrchr(i32*, i8 signext, i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @cmpfn(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
