; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/bootstrap/extr_bootstrap.c_boot_get_type_io_data.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/bootstrap/extr_bootstrap.c_boot_get_type_io_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typmap = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8, i8, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i64, i32, i8, i64, i64, i64, i32 }

@Typ = common dso_local global %struct.typmap** null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"type OID %u not found in Typ list\00", align 1
@n_types = common dso_local global i32 0, align 4
@TypInfo = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"type OID %u not found in TypInfo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @boot_get_type_io_data(i64 %0, i32* %1, i32* %2, i8* %3, i8* %4, i64* %5, i64* %6, i64* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca %struct.typmap**, align 8
  %18 = alloca %struct.typmap*, align 8
  %19 = alloca i32, align 4
  store i64 %0, i64* %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  store i64* %7, i64** %16, align 8
  %20 = load %struct.typmap**, %struct.typmap*** @Typ, align 8
  %21 = icmp ne %struct.typmap** %20, null
  br i1 %21, label %22, label %96

22:                                               ; preds = %8
  %23 = load %struct.typmap**, %struct.typmap*** @Typ, align 8
  store %struct.typmap** %23, %struct.typmap*** %17, align 8
  br label %24

24:                                               ; preds = %37, %22
  %25 = load %struct.typmap**, %struct.typmap*** %17, align 8
  %26 = load %struct.typmap*, %struct.typmap** %25, align 8
  %27 = icmp ne %struct.typmap* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.typmap**, %struct.typmap*** %17, align 8
  %30 = load %struct.typmap*, %struct.typmap** %29, align 8
  %31 = getelementptr inbounds %struct.typmap, %struct.typmap* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %32, %33
  br label %35

35:                                               ; preds = %28, %24
  %36 = phi i1 [ false, %24 ], [ %34, %28 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load %struct.typmap**, %struct.typmap*** %17, align 8
  %39 = getelementptr inbounds %struct.typmap*, %struct.typmap** %38, i32 1
  store %struct.typmap** %39, %struct.typmap*** %17, align 8
  br label %24

40:                                               ; preds = %35
  %41 = load %struct.typmap**, %struct.typmap*** %17, align 8
  %42 = load %struct.typmap*, %struct.typmap** %41, align 8
  store %struct.typmap* %42, %struct.typmap** %18, align 8
  %43 = load %struct.typmap*, %struct.typmap** %18, align 8
  %44 = icmp eq %struct.typmap* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @ERROR, align 4
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @elog(i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %47)
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.typmap*, %struct.typmap** %18, align 8
  %51 = getelementptr inbounds %struct.typmap, %struct.typmap* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** %10, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.typmap*, %struct.typmap** %18, align 8
  %56 = getelementptr inbounds %struct.typmap, %struct.typmap* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %11, align 8
  store i32 %58, i32* %59, align 4
  %60 = load %struct.typmap*, %struct.typmap** %18, align 8
  %61 = getelementptr inbounds %struct.typmap, %struct.typmap* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i8, i8* %62, align 4
  %64 = load i8*, i8** %12, align 8
  store i8 %63, i8* %64, align 1
  %65 = load %struct.typmap*, %struct.typmap** %18, align 8
  %66 = getelementptr inbounds %struct.typmap, %struct.typmap* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i8, i8* %67, align 1
  %69 = load i8*, i8** %13, align 8
  store i8 %68, i8* %69, align 1
  %70 = load %struct.typmap*, %struct.typmap** %18, align 8
  %71 = getelementptr inbounds %struct.typmap, %struct.typmap* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @OidIsValid(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %49
  %77 = load %struct.typmap*, %struct.typmap** %18, align 8
  %78 = getelementptr inbounds %struct.typmap, %struct.typmap* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i64*, i64** %14, align 8
  store i64 %80, i64* %81, align 8
  br label %85

82:                                               ; preds = %49
  %83 = load i64, i64* %9, align 8
  %84 = load i64*, i64** %14, align 8
  store i64 %83, i64* %84, align 8
  br label %85

85:                                               ; preds = %82, %76
  %86 = load %struct.typmap*, %struct.typmap** %18, align 8
  %87 = getelementptr inbounds %struct.typmap, %struct.typmap* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** %15, align 8
  store i64 %89, i64* %90, align 8
  %91 = load %struct.typmap*, %struct.typmap** %18, align 8
  %92 = getelementptr inbounds %struct.typmap, %struct.typmap* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %16, align 8
  store i64 %94, i64* %95, align 8
  br label %180

96:                                               ; preds = %8
  store i32 0, i32* %19, align 4
  br label %97

97:                                               ; preds = %112, %96
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* @n_types, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %97
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TypInfo, align 8
  %103 = load i32, i32* %19, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %9, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %115

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %19, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %19, align 4
  br label %97

115:                                              ; preds = %110, %97
  %116 = load i32, i32* %19, align 4
  %117 = load i32, i32* @n_types, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i32, i32* @ERROR, align 4
  %121 = load i64, i64* %9, align 8
  %122 = call i32 @elog(i32 %120, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %121)
  br label %123

123:                                              ; preds = %119, %115
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TypInfo, align 8
  %125 = load i32, i32* %19, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = load i32*, i32** %10, align 8
  store i32 %129, i32* %130, align 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TypInfo, align 8
  %132 = load i32, i32* %19, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32*, i32** %11, align 8
  store i32 %136, i32* %137, align 4
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TypInfo, align 8
  %139 = load i32, i32* %19, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load i8, i8* %142, align 4
  %144 = load i8*, i8** %12, align 8
  store i8 %143, i8* %144, align 1
  %145 = load i8*, i8** %13, align 8
  store i8 44, i8* %145, align 1
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TypInfo, align 8
  %147 = load i32, i32* %19, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = call i64 @OidIsValid(i64 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %123
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TypInfo, align 8
  %156 = load i32, i32* %19, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = load i64*, i64** %14, align 8
  store i64 %160, i64* %161, align 8
  br label %165

162:                                              ; preds = %123
  %163 = load i64, i64* %9, align 8
  %164 = load i64*, i64** %14, align 8
  store i64 %163, i64* %164, align 8
  br label %165

165:                                              ; preds = %162, %154
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TypInfo, align 8
  %167 = load i32, i32* %19, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = load i64*, i64** %15, align 8
  store i64 %171, i64* %172, align 8
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** @TypInfo, align 8
  %174 = load i32, i32* %19, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = load i64*, i64** %16, align 8
  store i64 %178, i64* %179, align 8
  br label %180

180:                                              ; preds = %165, %85
  ret void
}

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @OidIsValid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
