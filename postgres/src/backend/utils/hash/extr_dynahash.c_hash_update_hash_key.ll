; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/hash/extr_dynahash.c_hash_update_hash_key.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/hash/extr_dynahash.c_hash_update_hash_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 (i8*, i32)*, i64 (i32, i8*, i32)*, i32 (i32, i8*, i32)*, i32, %struct.TYPE_12__***, i32, i32, i64, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"cannot update in frozen hashtable \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"hash_update_hash_key argument is not in hashtable \22%s\22\00", align 1
@hash_accesses = common dso_local global i32 0, align 4
@hash_collisions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_update_hash_key(%struct.TYPE_11__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_12__**, align 8
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca %struct.TYPE_12__**, align 8
  %19 = alloca %struct.TYPE_12__**, align 8
  %20 = alloca i64 (i32, i8*, i32)*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call %struct.TYPE_12__* @ELEMENT_FROM_KEY(i8* %21)
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %8, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 9
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %9, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load i32, i32* @ERROR, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @elog(i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %30, %3
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @calc_bucket(%struct.TYPE_13__* %37, i64 %40)
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = ashr i64 %42, %45
  store i64 %46, i64* %14, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @MOD(i64 %47, i32 %50)
  store i64 %51, i64* %15, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 5
  %54 = load %struct.TYPE_12__***, %struct.TYPE_12__**** %53, align 8
  %55 = load i64, i64* %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__**, %struct.TYPE_12__*** %54, i64 %55
  %57 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %56, align 8
  store %struct.TYPE_12__** %57, %struct.TYPE_12__*** %16, align 8
  %58 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %16, align 8
  %59 = icmp eq %struct.TYPE_12__** %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %36
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %62 = call i32 @hash_corrupted(%struct.TYPE_11__* %61)
  br label %63

63:                                               ; preds = %60, %36
  %64 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %16, align 8
  %65 = load i64, i64* %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %64, i64 %65
  store %struct.TYPE_12__** %66, %struct.TYPE_12__*** %18, align 8
  %67 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %18, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  store %struct.TYPE_12__* %68, %struct.TYPE_12__** %17, align 8
  br label %69

69:                                               ; preds = %77, %63
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %71 = icmp ne %struct.TYPE_12__* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %75 = icmp eq %struct.TYPE_12__* %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %82

77:                                               ; preds = %72
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  store %struct.TYPE_12__** %79, %struct.TYPE_12__*** %18, align 8
  %80 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %18, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  store %struct.TYPE_12__* %81, %struct.TYPE_12__** %17, align 8
  br label %69

82:                                               ; preds = %76, %69
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %84 = icmp eq %struct.TYPE_12__* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i32, i32* @ERROR, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @elog(i32 %86, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %85, %82
  %92 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %18, align 8
  store %struct.TYPE_12__** %92, %struct.TYPE_12__*** %19, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i64 (i8*, i32)*, i64 (i8*, i32)** %94, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i64 %95(i8* %96, i32 %99)
  store i64 %100, i64* %10, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %102 = load i64, i64* %10, align 8
  %103 = call i64 @calc_bucket(%struct.TYPE_13__* %101, i64 %102)
  store i64 %103, i64* %13, align 8
  %104 = load i64, i64* %13, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = ashr i64 %104, %107
  store i64 %108, i64* %14, align 8
  %109 = load i64, i64* %13, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @MOD(i64 %109, i32 %112)
  store i64 %113, i64* %15, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 5
  %116 = load %struct.TYPE_12__***, %struct.TYPE_12__**** %115, align 8
  %117 = load i64, i64* %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__**, %struct.TYPE_12__*** %116, i64 %117
  %119 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %118, align 8
  store %struct.TYPE_12__** %119, %struct.TYPE_12__*** %16, align 8
  %120 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %16, align 8
  %121 = icmp eq %struct.TYPE_12__** %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %91
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %124 = call i32 @hash_corrupted(%struct.TYPE_11__* %123)
  br label %125

125:                                              ; preds = %122, %91
  %126 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %16, align 8
  %127 = load i64, i64* %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %126, i64 %127
  store %struct.TYPE_12__** %128, %struct.TYPE_12__*** %18, align 8
  %129 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %18, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  store %struct.TYPE_12__* %130, %struct.TYPE_12__** %17, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 2
  %133 = load i64 (i32, i8*, i32)*, i64 (i32, i8*, i32)** %132, align 8
  store i64 (i32, i8*, i32)* %133, i64 (i32, i8*, i32)** %20, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %155, %125
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %139 = icmp ne %struct.TYPE_12__* %138, null
  br i1 %139, label %140, label %160

140:                                              ; preds = %137
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %10, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %155

146:                                              ; preds = %140
  %147 = load i64 (i32, i8*, i32)*, i64 (i32, i8*, i32)** %20, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %149 = call i32 @ELEMENTKEY(%struct.TYPE_12__* %148)
  %150 = load i8*, i8** %7, align 8
  %151 = load i32, i32* %11, align 4
  %152 = call i64 %147(i32 %149, i8* %150, i32 %151)
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  br label %160

155:                                              ; preds = %146, %140
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  store %struct.TYPE_12__** %157, %struct.TYPE_12__*** %18, align 8
  %158 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %18, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  store %struct.TYPE_12__* %159, %struct.TYPE_12__** %17, align 8
  br label %137

160:                                              ; preds = %154, %137
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %162 = icmp ne %struct.TYPE_12__* %161, null
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store i32 0, i32* %4, align 4
  br label %190

164:                                              ; preds = %160
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %165, %struct.TYPE_12__** %17, align 8
  %166 = load i64, i64* %12, align 8
  %167 = load i64, i64* %13, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %178

169:                                              ; preds = %164
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %19, align 8
  store %struct.TYPE_12__* %172, %struct.TYPE_12__** %173, align 8
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %175 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %18, align 8
  store %struct.TYPE_12__* %174, %struct.TYPE_12__** %175, align 8
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %177, align 8
  br label %178

178:                                              ; preds = %169, %164
  %179 = load i64, i64* %10, align 8
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  store i64 %179, i64* %181, align 8
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 3
  %184 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %183, align 8
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %186 = call i32 @ELEMENTKEY(%struct.TYPE_12__* %185)
  %187 = load i8*, i8** %7, align 8
  %188 = load i32, i32* %11, align 4
  %189 = call i32 %184(i32 %186, i8* %187, i32 %188)
  store i32 1, i32* %4, align 4
  br label %190

190:                                              ; preds = %178, %163
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local %struct.TYPE_12__* @ELEMENT_FROM_KEY(i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @calc_bucket(%struct.TYPE_13__*, i64) #1

declare dso_local i64 @MOD(i64, i32) #1

declare dso_local i32 @hash_corrupted(%struct.TYPE_11__*) #1

declare dso_local i32 @ELEMENTKEY(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
