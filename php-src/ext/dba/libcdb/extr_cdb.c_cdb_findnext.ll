; ModuleID = '/home/carl/AnghaBench/php-src/ext/dba/libcdb/extr_cdb.c_cdb_findnext.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/dba/libcdb/extr_cdb.c_cdb_findnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdb = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdb_findnext(%struct.cdb* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdb*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cdb* %0, %struct.cdb** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.cdb*, %struct.cdb** %5, align 8
  %12 = getelementptr inbounds %struct.cdb, %struct.cdb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %62, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @cdb_hash(i8* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.cdb*, %struct.cdb** %5, align 8
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %21 = load i32, i32* %10, align 4
  %22 = shl i32 %21, 3
  %23 = and i32 %22, 2047
  %24 = call i32 @cdb_read(%struct.cdb* %19, i8* %20, i32 8, i32 %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %159

27:                                               ; preds = %15
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %29 = getelementptr inbounds i8, i8* %28, i64 4
  %30 = load %struct.cdb*, %struct.cdb** %5, align 8
  %31 = getelementptr inbounds %struct.cdb, %struct.cdb* %30, i32 0, i32 1
  %32 = call i32 @uint32_unpack(i8* %29, i32* %31)
  %33 = load %struct.cdb*, %struct.cdb** %5, align 8
  %34 = getelementptr inbounds %struct.cdb, %struct.cdb* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %159

38:                                               ; preds = %27
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %40 = load %struct.cdb*, %struct.cdb** %5, align 8
  %41 = getelementptr inbounds %struct.cdb, %struct.cdb* %40, i32 0, i32 2
  %42 = call i32 @uint32_unpack(i8* %39, i32* %41)
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.cdb*, %struct.cdb** %5, align 8
  %45 = getelementptr inbounds %struct.cdb, %struct.cdb* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %10, align 4
  %47 = ashr i32 %46, 8
  store i32 %47, i32* %10, align 4
  %48 = load %struct.cdb*, %struct.cdb** %5, align 8
  %49 = getelementptr inbounds %struct.cdb, %struct.cdb* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = srem i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = shl i32 %53, 3
  store i32 %54, i32* %10, align 4
  %55 = load %struct.cdb*, %struct.cdb** %5, align 8
  %56 = getelementptr inbounds %struct.cdb, %struct.cdb* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %57, %58
  %60 = load %struct.cdb*, %struct.cdb** %5, align 8
  %61 = getelementptr inbounds %struct.cdb, %struct.cdb* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %38, %3
  br label %63

63:                                               ; preds = %157, %62
  %64 = load %struct.cdb*, %struct.cdb** %5, align 8
  %65 = getelementptr inbounds %struct.cdb, %struct.cdb* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.cdb*, %struct.cdb** %5, align 8
  %68 = getelementptr inbounds %struct.cdb, %struct.cdb* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %158

71:                                               ; preds = %63
  %72 = load %struct.cdb*, %struct.cdb** %5, align 8
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %74 = load %struct.cdb*, %struct.cdb** %5, align 8
  %75 = getelementptr inbounds %struct.cdb, %struct.cdb* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @cdb_read(%struct.cdb* %72, i8* %73, i32 8, i32 %76)
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 -1, i32* %4, align 4
  br label %159

80:                                               ; preds = %71
  %81 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %82 = getelementptr inbounds i8, i8* %81, i64 4
  %83 = call i32 @uint32_unpack(i8* %82, i32* %9)
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %159

87:                                               ; preds = %80
  %88 = load %struct.cdb*, %struct.cdb** %5, align 8
  %89 = getelementptr inbounds %struct.cdb, %struct.cdb* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = load %struct.cdb*, %struct.cdb** %5, align 8
  %93 = getelementptr inbounds %struct.cdb, %struct.cdb* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 8
  store i32 %95, i32* %93, align 4
  %96 = load %struct.cdb*, %struct.cdb** %5, align 8
  %97 = getelementptr inbounds %struct.cdb, %struct.cdb* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.cdb*, %struct.cdb** %5, align 8
  %100 = getelementptr inbounds %struct.cdb, %struct.cdb* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.cdb*, %struct.cdb** %5, align 8
  %103 = getelementptr inbounds %struct.cdb, %struct.cdb* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 3
  %106 = add nsw i32 %101, %105
  %107 = icmp eq i32 %98, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %87
  %109 = load %struct.cdb*, %struct.cdb** %5, align 8
  %110 = getelementptr inbounds %struct.cdb, %struct.cdb* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.cdb*, %struct.cdb** %5, align 8
  %113 = getelementptr inbounds %struct.cdb, %struct.cdb* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %108, %87
  %115 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %116 = call i32 @uint32_unpack(i8* %115, i32* %10)
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.cdb*, %struct.cdb** %5, align 8
  %119 = getelementptr inbounds %struct.cdb, %struct.cdb* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %117, %120
  br i1 %121, label %122, label %157

122:                                              ; preds = %114
  %123 = load %struct.cdb*, %struct.cdb** %5, align 8
  %124 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @cdb_read(%struct.cdb* %123, i8* %124, i32 8, i32 %125)
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  store i32 -1, i32* %4, align 4
  br label %159

129:                                              ; preds = %122
  %130 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %131 = call i32 @uint32_unpack(i8* %130, i32* %10)
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %156

135:                                              ; preds = %129
  %136 = load %struct.cdb*, %struct.cdb** %5, align 8
  %137 = load i8*, i8** %6, align 8
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 8
  %141 = call i32 @cdb_match(%struct.cdb* %136, i8* %137, i32 %138, i32 %140)
  switch i32 %141, label %155 [
    i32 -1, label %142
    i32 1, label %143
  ]

142:                                              ; preds = %135
  store i32 -1, i32* %4, align 4
  br label %159

143:                                              ; preds = %135
  %144 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %145 = getelementptr inbounds i8, i8* %144, i64 4
  %146 = load %struct.cdb*, %struct.cdb** %5, align 8
  %147 = getelementptr inbounds %struct.cdb, %struct.cdb* %146, i32 0, i32 5
  %148 = call i32 @uint32_unpack(i8* %145, i32* %147)
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 8
  %151 = load i32, i32* %7, align 4
  %152 = add i32 %150, %151
  %153 = load %struct.cdb*, %struct.cdb** %5, align 8
  %154 = getelementptr inbounds %struct.cdb, %struct.cdb* %153, i32 0, i32 6
  store i32 %152, i32* %154, align 4
  store i32 1, i32* %4, align 4
  br label %159

155:                                              ; preds = %135
  br label %156

156:                                              ; preds = %155, %129
  br label %157

157:                                              ; preds = %156, %114
  br label %63

158:                                              ; preds = %63
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %158, %143, %142, %128, %86, %79, %37, %26
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @cdb_hash(i8*, i32) #1

declare dso_local i32 @cdb_read(%struct.cdb*, i8*, i32, i32) #1

declare dso_local i32 @uint32_unpack(i8*, i32*) #1

declare dso_local i32 @cdb_match(%struct.cdb*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
