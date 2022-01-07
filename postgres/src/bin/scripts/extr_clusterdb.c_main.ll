; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/scripts/extr_clusterdb.c_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/scripts/extr_clusterdb.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32*, i32* }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_4__* }

@main.long_options = internal global [13 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8 -128, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8 -128, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8 -128, i32* null, i32 85 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8 -127, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8 -127, i32* null, i32 87 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8 -127, i32* null, i32 101 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8 -127, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8 -128, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8 -127, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8 -128, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8 -127, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8 -128, i32* null, i32 2 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"no-password\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"dbname\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"maintenance-db\00", align 1
@TRI_DEFAULT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"pgscripts\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"clusterdb\00", align 1
@help = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"h:p:U:wWeqd:at:v\00", align 1
@optarg = common dso_local global i32 0, align 4
@TRI_NO = common dso_local global i32 0, align 4
@TRI_YES = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [39 x i8] c"Try \22%s --help\22 for more information.\0A\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [48 x i8] c"too many command-line arguments (first is \22%s\22)\00", align 1
@.str.17 = private unnamed_addr constant [65 x i8] c"cannot cluster all databases and a specific one at the same time\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"cannot cluster specific table(s) in all databases\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"PGDATABASE\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"PGUSER\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_5__, align 8
  %20 = alloca %struct.TYPE_4__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %21 = load i32, i32* @TRI_DEFAULT, align 4
  store i32 %21, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %22 = bitcast %struct.TYPE_5__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 24, i1 false)
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @pg_logging_init(i8* %25)
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @get_progname(i8* %29)
  store i8* %30, i8** %6, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @PG_TEXTDOMAIN(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %35 = call i32 @set_pglocale_pgservice(i8* %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* @help, align 4
  %39 = call i32 @handle_help_version_opts(i32 %36, i8** %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %79, %2
  %41 = load i32, i32* %4, align 4
  %42 = load i8**, i8*** %5, align 8
  %43 = call i32 @getopt_long(i32 %41, i8** %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), %struct.option* getelementptr inbounds ([13 x %struct.option], [13 x %struct.option]* @main.long_options, i64 0, i64 0), i32* %7)
  store i32 %43, i32* %8, align 4
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %80

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  switch i32 %46, label %73 [
    i32 104, label %47
    i32 112, label %50
    i32 85, label %53
    i32 119, label %56
    i32 87, label %58
    i32 101, label %60
    i32 113, label %61
    i32 100, label %62
    i32 97, label %65
    i32 116, label %66
    i32 118, label %69
    i32 2, label %70
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* @optarg, align 4
  %49 = call i8* @pg_strdup(i32 %48)
  store i8* %49, i8** %11, align 8
  br label %79

50:                                               ; preds = %45
  %51 = load i32, i32* @optarg, align 4
  %52 = call i8* @pg_strdup(i32 %51)
  store i8* %52, i8** %12, align 8
  br label %79

53:                                               ; preds = %45
  %54 = load i32, i32* @optarg, align 4
  %55 = call i8* @pg_strdup(i32 %54)
  store i8* %55, i8** %13, align 8
  br label %79

56:                                               ; preds = %45
  %57 = load i32, i32* @TRI_NO, align 4
  store i32 %57, i32* %14, align 4
  br label %79

58:                                               ; preds = %45
  %59 = load i32, i32* @TRI_YES, align 4
  store i32 %59, i32* %14, align 4
  br label %79

60:                                               ; preds = %45
  store i32 1, i32* %15, align 4
  br label %79

61:                                               ; preds = %45
  store i32 1, i32* %16, align 4
  br label %79

62:                                               ; preds = %45
  %63 = load i32, i32* @optarg, align 4
  %64 = call i8* @pg_strdup(i32 %63)
  store i8* %64, i8** %9, align 8
  br label %79

65:                                               ; preds = %45
  store i32 1, i32* %17, align 4
  br label %79

66:                                               ; preds = %45
  %67 = load i32, i32* @optarg, align 4
  %68 = call i32 @simple_string_list_append(%struct.TYPE_5__* %19, i32 %67)
  br label %79

69:                                               ; preds = %45
  store i32 1, i32* %18, align 4
  br label %79

70:                                               ; preds = %45
  %71 = load i32, i32* @optarg, align 4
  %72 = call i8* @pg_strdup(i32 %71)
  store i8* %72, i8** %10, align 8
  br label %79

73:                                               ; preds = %45
  %74 = load i32, i32* @stderr, align 4
  %75 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0))
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @fprintf(i32 %74, i8* %75, i8* %76)
  %78 = call i32 @exit(i32 1) #4
  unreachable

79:                                               ; preds = %70, %69, %66, %65, %62, %61, %60, %58, %56, %53, %50, %47
  br label %40

80:                                               ; preds = %40
  %81 = load i32, i32* @optind, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load i8*, i8** %9, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i8**, i8*** %5, align 8
  %89 = load i32, i32* @optind, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %9, align 8
  %93 = load i32, i32* @optind, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* @optind, align 4
  br label %95

95:                                               ; preds = %87, %84, %80
  %96 = load i32, i32* @optind, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %95
  %100 = load i8**, i8*** %5, align 8
  %101 = load i32, i32* @optind, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0), i8* %104)
  %106 = load i32, i32* @stderr, align 4
  %107 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0))
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 @fprintf(i32 %106, i8* %107, i8* %108)
  %110 = call i32 @exit(i32 1) #4
  unreachable

111:                                              ; preds = %95
  %112 = call i32 (...) @setup_cancel_handler()
  %113 = load i32, i32* %17, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %139

115:                                              ; preds = %111
  %116 = load i8*, i8** %9, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.17, i64 0, i64 0))
  %120 = call i32 @exit(i32 1) #4
  unreachable

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = icmp ne %struct.TYPE_4__* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = call i32 (i8*, ...) @pg_log_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i64 0, i64 0))
  %127 = call i32 @exit(i32 1) #4
  unreachable

128:                                              ; preds = %121
  %129 = load i32, i32* %18, align 4
  %130 = load i8*, i8** %10, align 8
  %131 = load i8*, i8** %11, align 8
  %132 = load i8*, i8** %12, align 8
  %133 = load i8*, i8** %13, align 8
  %134 = load i32, i32* %14, align 4
  %135 = load i8*, i8** %6, align 8
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %16, align 4
  %138 = call i32 @cluster_all_databases(i32 %129, i8* %130, i8* %131, i8* %132, i8* %133, i32 %134, i8* %135, i32 %136, i32 %137)
  br label %196

139:                                              ; preds = %111
  %140 = load i8*, i8** %9, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %142, label %157

142:                                              ; preds = %139
  %143 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  store i8* %146, i8** %9, align 8
  br label %156

147:                                              ; preds = %142
  %148 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  store i8* %151, i8** %9, align 8
  br label %155

152:                                              ; preds = %147
  %153 = load i8*, i8** %6, align 8
  %154 = call i8* @get_user_name_or_exit(i8* %153)
  store i8* %154, i8** %9, align 8
  br label %155

155:                                              ; preds = %152, %150
  br label %156

156:                                              ; preds = %155, %145
  br label %157

157:                                              ; preds = %156, %139
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = icmp ne %struct.TYPE_4__* %159, null
  br i1 %160, label %161, label %185

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  store %struct.TYPE_4__* %163, %struct.TYPE_4__** %20, align 8
  br label %164

164:                                              ; preds = %180, %161
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %166 = icmp ne %struct.TYPE_4__* %165, null
  br i1 %166, label %167, label %184

167:                                              ; preds = %164
  %168 = load i8*, i8** %9, align 8
  %169 = load i32, i32* %18, align 4
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i8*, i8** %11, align 8
  %174 = load i8*, i8** %12, align 8
  %175 = load i8*, i8** %13, align 8
  %176 = load i32, i32* %14, align 4
  %177 = load i8*, i8** %6, align 8
  %178 = load i32, i32* %15, align 4
  %179 = call i32 @cluster_one_database(i8* %168, i32 %169, i32* %172, i8* %173, i8* %174, i8* %175, i32 %176, i8* %177, i32 %178)
  br label %180

180:                                              ; preds = %167
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  store %struct.TYPE_4__* %183, %struct.TYPE_4__** %20, align 8
  br label %164

184:                                              ; preds = %164
  br label %195

185:                                              ; preds = %157
  %186 = load i8*, i8** %9, align 8
  %187 = load i32, i32* %18, align 4
  %188 = load i8*, i8** %11, align 8
  %189 = load i8*, i8** %12, align 8
  %190 = load i8*, i8** %13, align 8
  %191 = load i32, i32* %14, align 4
  %192 = load i8*, i8** %6, align 8
  %193 = load i32, i32* %15, align 4
  %194 = call i32 @cluster_one_database(i8* %186, i32 %187, i32* null, i8* %188, i8* %189, i8* %190, i32 %191, i8* %192, i32 %193)
  br label %195

195:                                              ; preds = %185, %184
  br label %196

196:                                              ; preds = %195, %128
  %197 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pg_logging_init(i8*) #2

declare dso_local i8* @get_progname(i8*) #2

declare dso_local i32 @set_pglocale_pgservice(i8*, i32) #2

declare dso_local i32 @PG_TEXTDOMAIN(i8*) #2

declare dso_local i32 @handle_help_version_opts(i32, i8**, i8*, i32) #2

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

declare dso_local i8* @pg_strdup(i32) #2

declare dso_local i32 @simple_string_list_append(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i8* @_(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @pg_log_error(i8*, ...) #2

declare dso_local i32 @setup_cancel_handler(...) #2

declare dso_local i32 @cluster_all_databases(i32, i8*, i8*, i8*, i8*, i32, i8*, i32, i32) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i8* @get_user_name_or_exit(i8*) #2

declare dso_local i32 @cluster_one_database(i8*, i32, i32*, i8*, i8*, i8*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
