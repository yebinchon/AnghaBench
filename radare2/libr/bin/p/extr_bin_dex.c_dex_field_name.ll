; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_dex.c_dex_field_name.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_dex.c_dex_field_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@simplifiedDemangling = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"(%s) %s.%s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"(%d) %d.%d\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s->%s %s\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%d->%d %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_10__*, i32)* @dex_field_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dex_field_name(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br label %23

23:                                               ; preds = %18, %2
  %24 = phi i1 [ false, %2 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @r_return_val_if_fail(i32 %25, i32* null)
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sge i32 %30, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %23
  store i8* null, i8** %3, align 8
  br label %193

37:                                               ; preds = %29
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %49, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48, %37
  store i8* null, i8** %3, align 8
  br label %193

56:                                               ; preds = %48
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp sge i32 %68, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %67, %56
  store i8* null, i8** %3, align 8
  br label %193

75:                                               ; preds = %67
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %7, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @getstr(%struct.TYPE_10__* %84, i32 %92)
  store i8* %93, i8** %9, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i8* @getstr(%struct.TYPE_10__* %94, i32 %95)
  store i8* %96, i8** %10, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @getstr(%struct.TYPE_10__* %97, i32 %105)
  store i8* %106, i8** %11, align 8
  %107 = load i64, i64* @simplifiedDemangling, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %158

109:                                              ; preds = %75
  %110 = load i8*, i8** %9, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %139

112:                                              ; preds = %109
  %113 = load i8*, i8** %10, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %139

115:                                              ; preds = %112
  %116 = load i8*, i8** %11, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %139

118:                                              ; preds = %115
  %119 = load i8*, i8** %9, align 8
  %120 = call i32 @strdup(i8* %119)
  %121 = call i8* @simplify(i32 %120)
  store i8* %121, i8** %12, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = call i32 @strdup(i8* %122)
  %124 = call i8* @simplify(i32 %123)
  store i8* %124, i8** %13, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = call i32 @strdup(i8* %125)
  %127 = call i8* @simplify(i32 %126)
  store i8* %127, i8** %14, align 8
  %128 = load i8*, i8** %14, align 8
  %129 = load i8*, i8** %12, align 8
  %130 = load i8*, i8** %13, align 8
  %131 = call i8* (i8*, ...) @r_str_newf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %128, i8* %129, i8* %130)
  store i8* %131, i8** %15, align 8
  %132 = load i8*, i8** %12, align 8
  %133 = call i32 @free(i8* %132)
  %134 = load i8*, i8** %13, align 8
  %135 = call i32 @free(i8* %134)
  %136 = load i8*, i8** %14, align 8
  %137 = call i32 @free(i8* %136)
  %138 = load i8*, i8** %15, align 8
  store i8* %138, i8** %3, align 8
  br label %193

139:                                              ; preds = %115, %112, %109
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i8* (i8*, ...) @r_str_newf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %147, i32 %148, i32 %156)
  store i8* %157, i8** %3, align 8
  br label %193

158:                                              ; preds = %75
  %159 = load i8*, i8** %9, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %172

161:                                              ; preds = %158
  %162 = load i8*, i8** %10, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %172

164:                                              ; preds = %161
  %165 = load i8*, i8** %11, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = load i8*, i8** %9, align 8
  %169 = load i8*, i8** %10, align 8
  %170 = load i8*, i8** %11, align 8
  %171 = call i8* (i8*, ...) @r_str_newf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %168, i8* %169, i8* %170)
  br label %191

172:                                              ; preds = %164, %161, %158
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %7, align 4
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i8* (i8*, ...) @r_str_newf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %180, i32 %181, i32 %189)
  br label %191

191:                                              ; preds = %172, %167
  %192 = phi i8* [ %171, %167 ], [ %190, %172 ]
  store i8* %192, i8** %3, align 8
  br label %193

193:                                              ; preds = %191, %139, %118, %74, %55, %36
  %194 = load i8*, i8** %3, align 8
  ret i8* %194
}

declare dso_local i32 @r_return_val_if_fail(i32, i32*) #1

declare dso_local i8* @getstr(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @simplify(i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i8* @r_str_newf(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
